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

    public function getAllBirthdays()
    {
        $sql = "SELECT id, name, dayofbirth, monthofbirth, yearofbirth, gender, username, avatar FROM c4_user";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }
}
