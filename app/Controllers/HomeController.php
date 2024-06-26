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

    public function error404()
    {
        return $this->render("pages.error.404");
    }
}
