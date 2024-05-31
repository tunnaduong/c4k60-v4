<?php

namespace App\Controllers;

use App\Models\User;

class UserController extends BaseController
{
    public function getUserProfile()
    {
        $user = new User();
        $profiles = $user->userProfile();
        return $this->render("pages.user.profile", compact("profiles"));
    }
}
