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
        return $this->render("home.index", compact("notifications"));
    }

    public function menu()
    {
        return $this->render("menu.index");
    }
}
