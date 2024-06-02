<?php

namespace App\Models;

class Home extends BaseModel
{
    public function getNotifications()
    {
        $sql = "SELECT * FROM thongbaolop ORDER BY id DESC LIMIT 5";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }

    public function getDonators()
    {
        $sql = "SELECT * FROM donators";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }

    public function getChangelogs()
    {
        $sql = "SELECT * FROM changelogs ORDER BY id DESC LIMIT 1";
        $this->setQuery($sql);
        return $this->loadRow();
    }

    public function getChangelogsAll()
    {
        $sql = "SELECT * FROM changelogs ORDER BY id DESC";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }

    public function getDonatorsAll()
    {
        $sql = "SELECT * FROM donators";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }
}
