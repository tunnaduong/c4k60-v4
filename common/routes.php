<?php

use Phroute\Phroute\RouteCollector;

$router = new RouteCollector();

$router->get('/', function () {
    return 'This route responds to requests with the GET method at the path /example';
});
