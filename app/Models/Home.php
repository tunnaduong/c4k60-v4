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

    public function getNotificationsAll()
    {
        $sql = "SELECT * FROM thongbaolop ORDER BY id DESC";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }

    public function getAlbumsAll()
    {
        $sql = "SELECT * FROM album";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }

    public function getImagesByAlbumID($id)
    {
        $sql = "SELECT * FROM thuvienanh WHERE album = '$id'";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }

    public function getVideosByAlbumID($id)
    {
        $sql = "SELECT * FROM videos WHERE album = '$id'";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }

    public function getAlbum($id)
    {
        $sql = "SELECT * FROM album WHERE id = '$id'";
        $this->setQuery($sql);
        return $this->loadRow();
    }
}
