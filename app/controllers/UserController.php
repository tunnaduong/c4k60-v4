<?php

namespace App\Controllers;

use App\Models\User;

class UserController extends BaseController
{
    public function getUserProfile($username)
    {
        $user = new User();
        $profile = $user->userProfile($username);
        return $this->render("pages.user.profile", compact("profile"));
    }
}
