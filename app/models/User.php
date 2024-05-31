<?php

namespace App\Models;

class User extends BaseModel
{
    public function userProfile()
    {
        $sql = "SELECT * FROM c4_user";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }
}
