<?php

namespace App\Controllers;

use App\Models\Home;
use App\Models\User;

class HomeController extends BaseController
{
    public $home;
    public $user;

    public function __construct()
    {
        $this->home = new Home();
        $this->user = new User();
    }

    public function index()
    {
        $notifications = $this->home->getNotifications();
        $birthdays = $this->user->getAllBirthdays();

        $daysLeft = []; // Array to store days left for each user
        foreach ($birthdays as $row) {
            $birthdate = $row->dayofbirth . "-" . $row->monthofbirth . "-" . $row->yearofbirth; // desired input DD-MM-YYYY

            $current_date = date("d-m-Y");  // current date 

            $birth_time = strtotime($birthdate);
            $current_time = strtotime($current_date);

            $arr1 = explode("-", $birthdate);
            $year1 = $arr1[2];

            $arr2 = explode("-", $current_date);
            $year2 = $arr2[2];

            $year_diff = $year2 - $year1;

            $time_new = strtotime("+" . $year_diff . " year", $birth_time);

            if ($time_new < $current_time) {
                $time_new = strtotime("+1 year", $time_new);
            }

            $time_diff = $time_new - $current_time;

            $daysLeft[$row->id] = $time_diff / 86400; // Store days left for this user
        }

        // Sort the daysLeft array in ascending order
        asort($daysLeft);

        // Limit the daysLeft array to the top 5
        $daysLeft = array_slice($daysLeft, 0, 5, true);

        // Filter the birthdays array to include only those present in the limited daysLeft array
        $filteredBirthdays = array_filter($birthdays, function ($birthday) use ($daysLeft) {
            return array_key_exists($birthday->id, $daysLeft);
        });

        // Ensure the birthdays are sorted according to days left
        usort($filteredBirthdays, function ($a, $b) use ($daysLeft) {
            return $daysLeft[$a->id] <=> $daysLeft[$b->id];
        });

        // Use $filteredBirthdays instead of $birthdays for further operations

        $donators = $this->home->getDonators();

        $changelogs = $this->home->getChangelogs();

        return $this->render("pages.home.index", compact("notifications", "filteredBirthdays", "daysLeft", "donators", "changelogs"));
    }

    public function menu()
    {
        return $this->render("pages.menu.index");
    }

    public function changelogs()
    {
        $changelogs = $this->home->getChangelogsAll();
        return $this->render("pages.changelogs.index", compact("changelogs"));
    }

    public function sponsors()
    {
        $donators = $this->home->getDonators();
        return $this->render("pages.sponsors.index", compact("donators"));
    }

    public function birthdays()
    {
        $birthdays = $this->user->getAllBirthdays();
        $daysLeft = []; // Array to store days left for each user
        foreach ($birthdays as $row) {
            $birthdate = $row->dayofbirth . "-" . $row->monthofbirth . "-" . $row->yearofbirth; // desired input DD-MM-YYYY

            $current_date = date("d-m-Y");  // current date 

            $birth_time = strtotime($birthdate);
            $current_time = strtotime($current_date);

            $arr1 = explode("-", $birthdate);
            $year1 = $arr1[2];

            $arr2 = explode("-", $current_date);
            $year2 = $arr2[2];

            $year_diff = $year2 - $year1;

            $time_new = strtotime("+" . $year_diff . " year", $birth_time);

            if ($time_new < $current_time) {
                $time_new = strtotime("+1 year", $time_new);
            }

            $time_diff = $time_new - $current_time;

            $daysLeft[$row->id] = $time_diff / 86400; // Store days left for this user
        }
        // Sort the daysLeft array in descending order
        asort($daysLeft);

        // Sort the birthdays array based on the daysLeft array
        usort($birthdays, function ($a, $b) use ($daysLeft) {
            return $daysLeft[$a->id] <=> $daysLeft[$b->id];
        });

        return $this->render("pages.birthdays.index", compact("birthdays", "daysLeft"));
    }

    public function notifications()
    {
        $notifications = $this->home->getNotificationsAll();
        return $this->render("pages.notifications.index", compact("notifications"));
    }

    public function notificationDetail($id)
    {
        $notification = $this->home->getNotificationById($id);

        if (!$notification) {
            return $this->error404();
        }

        return $this->render("pages.notifications.detail", compact("notification"));
    }

    public function gallery()
    {
        $albums = $this->home->getAlbumsAll();
        return $this->render("pages.gallery.index", compact("albums"));
    }

    public function album($albumID)
    {
        $album = $this->home->getAlbum($albumID);
        $albumName = $album->name;

        if ($album->type != "video") {
            $images = $this->home->getImagesByAlbumID($albumID);
            return $this->render("pages.gallery.album", compact("images", "albumName"));
        } else {
            $videos = $this->home->getVideosByAlbumID($albumID);
            return $this->render("pages.gallery.album", compact("videos", "albumName"));
        }
    }

    public function calendar()
    {
        $month = isset($_GET['month']) ? (int) $_GET['month'] : (int) date('n');
        $year = isset($_GET['year']) ? (int) $_GET['year'] : (int) date('Y');

        if ($month < 1) {
            $month = 12;
            $year--;
        } elseif ($month > 12) {
            $month = 1;
            $year++;
        }

        $events = $this->home->getCalendarEvents();

        // Nhóm sự kiện theo ngày (Y-m-d) để hiển thị chấm đánh dấu trên lịch
        $eventDates = [];
        foreach ($events as $event) {
            $day = date('Y-m-d', strtotime($event->start));
            $eventDates[$day][] = $event;
        }

        // Danh sách sự kiện sắp tới, tính từ hôm nay trở đi
        $upcoming = array_filter($events, function ($event) {
            return strtotime($event->start) >= strtotime('today');
        });
        usort($upcoming, function ($a, $b) {
            return strtotime($a->start) <=> strtotime($b->start);
        });
        $upcoming = array_slice($upcoming, 0, 10);

        // Xây dựng lưới các tuần trong tháng
        $firstDayOfMonth = mktime(0, 0, 0, $month, 1, $year);
        $daysInMonth = (int) date('t', $firstDayOfMonth);
        $startWeekday = (int) date('w', $firstDayOfMonth);

        $weeks = [];
        $week = array_fill(0, $startWeekday, null);
        for ($d = 1; $d <= $daysInMonth; $d++) {
            $week[] = $d;
            if (count($week) == 7) {
                $weeks[] = $week;
                $week = [];
            }
        }
        if (count($week) > 0) {
            $weeks[] = array_pad($week, 7, null);
        }

        $prevMonth = $month - 1;
        $prevYear = $year;
        if ($prevMonth < 1) {
            $prevMonth = 12;
            $prevYear--;
        }

        $nextMonth = $month + 1;
        $nextYear = $year;
        if ($nextMonth > 12) {
            $nextMonth = 1;
            $nextYear++;
        }

        $today = date('Y-m-d');

        return $this->render("pages.calendar.index", compact(
            "month",
            "year",
            "weeks",
            "eventDates",
            "upcoming",
            "prevMonth",
            "prevYear",
            "nextMonth",
            "nextYear",
            "today"
        ));
    }

    public function calendarDay($date)
    {
        $events = $this->home->getCalendarEvents();

        $dayEvents = array_values(array_filter($events, function ($event) use ($date) {
            return date('Y-m-d', strtotime($event->start)) == $date;
        }));

        usort($dayEvents, function ($a, $b) {
            return strtotime($a->start) <=> strtotime($b->start);
        });

        return $this->render("pages.calendar.day", compact("date", "dayEvents"));
    }

    public function error404()
    {
        return $this->render("pages.error.404");
    }
}
