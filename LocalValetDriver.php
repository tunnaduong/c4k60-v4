<?php

class LocalValetDriver extends ValetDriver
{
    /**
     * Kiểm tra xem driver này có nên xử lý request không.
     */
    public function serves($sitePath, $siteName, $uri)
    {
        return true;
    }

    /**
     * Xác định file tĩnh (css, js, images...)
     */
    public function isStaticFile($sitePath, $siteName, $uri)
    {
        if (file_exists($staticFilePath = $sitePath . $uri) && !is_dir($staticFilePath)) {
            return $staticFilePath;
        }

        return false;
    }

    /**
     * Trỏ request về file index.php ở gốc thư mục
     */
    public function frontControllerPath($sitePath, $siteName, $uri)
    {
        return $sitePath . '/index.php';
    }
}