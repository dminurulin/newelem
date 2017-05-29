<?php

require_once __DIR__ .'/vendor/autoload.php';
require "controllers/aboutController.php";
require "controllers/staffController.php";
require "controllers/seminarsController.php";
require "providers/ModelsServiceProvider.php";
require "lib/Dbase.php";


use Silex\Application;
use Silex\Provider;
use Silex\ControllerProviderInterface;

//
// Application setup
//

$app = new Application();
$app->register(new Provider\ServiceControllerServiceProvider());
//$app->register(new Provider\TwigServiceProvider());
$app->register(new Silex\Provider\TwigServiceProvider(), array(
    'twig.path' => __DIR__ . '/views/',
));
$app->register(new Providers\ModelsServiceProvider(), array(
    'models.path' => __DIR__ . '/models/'
));
//$simpleUserProvider = new SimpleUser\UserServiceProvider();
//$app->register($simpleUserProvider);




$app->get('/', function () use ($app) {
    $menu = $app['models']->load('mainMenu', 'getMainMenuList');    

    return $app['twig']->render('page.twig', array(
        'name' => 'НОВЫЙ ЭЛЕМЕНТ',
        'indexpage' => 'true',
        'mainmenu' => $menu
    ));

});

$app->mount('/about', new \Controllers\aboutControllerProvider());
$app->mount('/seminars', new \Controllers\seminarsControllerProvider());
$app->mount('/staff', new \Controllers\staffControllerProvider());
//$app->mount('/lk', $simpleUserProvider);

$app->run();
?>