<?php

namespace App\Controllers;

use App\Models\Home;

class HomeController extends BaseController
{
    public $home;

    public function __construct()
    {
        $this->home = new Home();
    }

    public function index()
    {
        $notifications = $this->home->getNotifications();
        return $this->render("pages.home.index", compact("notifications"));
    }

    public function menu()
    {
        return $this->render("pages.menu.index");
    }

    public function error404()
    {
        return $this->render("pages.error.404");
    }
}
