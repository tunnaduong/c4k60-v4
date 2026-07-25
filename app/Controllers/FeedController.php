<?php

namespace App\Controllers;

class FeedController extends BaseController
{
    public function index()
    {
        return $this->render("pages.feed.index");
    }

    public function detail($id)
    {
        $id = (int) $id;
        return $this->render("pages.feed.detail", compact("id"));
    }
}
