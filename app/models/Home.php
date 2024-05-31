<?php

namespace App\Models;

class Home extends BaseModel
{
    protected $table = "thongbaolop";

    public function getNotifications()
    {
        $sql = "SELECT * FROM $this->table ORDER BY id DESC LIMIT 5";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }
}
