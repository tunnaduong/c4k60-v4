<?php

namespace App\Models;

class User extends BaseModel
{
    public function userProfile($username)
    {
        $sql = "SELECT * FROM c4_user WHERE username = '$username'";
        $this->setQuery($sql);
        return $this->loadRow();
    }

    public function getAllUsers()
    {
        $sql = "SELECT id, name, username, address, avatar, verified FROM c4_user ORDER BY name ASC";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }

    public function getAllBirthdays()
    {
        $sql = "SELECT id, name, dayofbirth, monthofbirth, yearofbirth, gender, username, avatar FROM c4_user";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }
}
