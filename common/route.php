<?php

use Phroute\Phroute\RouteCollector;

$url = !isset($_GET['url']) ? "/" : $_GET['url'];
try {
    $router = new RouteCollector();


    // khu vực cần quan tâm -----------
    // bắt đầu định nghĩa ra các đường dẫn
    // $router->get('/', function () {
    //     return "trang chủ";
    // });



    // khu vực cần quan tâm -----------
    $router->get('/', [App\Controllers\HomeController::class, 'index']);

    $router->any('/login', [App\Controllers\AuthController::class, 'login']);

    $router->get('/menu', [App\Controllers\HomeController::class, 'menu']);

    $router->get('/logout', [App\Controllers\AuthController::class, 'logout']);

    $router->get('/profile/{username}', [App\Controllers\UserController::class, 'getUserProfile']);

    $router->get('/changelogs', [App\Controllers\HomeController::class, 'changelogs']);

    $router->get('/sponsors', [App\Controllers\HomeController::class, 'sponsors']);

    $router->get('/birthdays', [App\Controllers\HomeController::class, 'birthdays']);

    # NB. You can cache the return value from $router->getData() so you don't have to create the routes each request - massive speed gains
    $dispatcher = new Phroute\Phroute\Dispatcher($router->getData());

    $response = $dispatcher->dispatch($_SERVER['REQUEST_METHOD'], $url);

    // Print out the value returned from the dispatched function
    echo $response;
} catch (Exception $e) {
    return (new App\Controllers\HomeController)->error404();
}
