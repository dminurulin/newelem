<?php

namespace Controllers;

use Silex\Application;
use Silex\Route;
use Silex\ControllerProviderInterface;
use Silex\ControllerCollection;

class aboutControllerProvider implements ControllerProviderInterface {

    public function connect(Application $app) {
        // creates a new controller based on the default route
        $controllers = $app['controllers_factory'];

        $controllers->get('/', function (Application $app) {

            $txt = $app['models']->load('pages', 'LoadStaticPage', 'about');
            $menu = $app['models']->load('mainMenu', 'getMainMenuList');
            $name = $txt['name'];
            $alias = $txt['alias'];
            $src = $txt['src'];
            $chList = $app['models']->load('pages', 'getChildrens', 'about');

            return $app['twig']->render('page.twig', array(
                        'mainmenu' => $menu,
                        'staticpage' => 'yes',
                        'name' => "$name",
                        'alias' => "$alias",
                        'src' => "$src",
                        'childrensList' => $chList
            ));
        });
        $controllers->get('/{name}', function (Application $app, $name) {

            $txt = $app['models']->load('pages', 'LoadStaticPage', "$name");
            $name = $txt['name'];
            $menu = $app['models']->load('mainMenu', 'getMainMenuList');
            $alias = $txt['alias'];
            $src = $txt['src'];
            $chList = $app['models']->load('pages', 'getChildrens', "$alias");

            return $app['twig']->render('page.twig', array(
                'mainmenu' => $menu,
                'staticpage' => 'yes',
                'name' => $name, 
                'alias' => 'about/' . $alias, 
                'src' => "$src", 
                'childrensList' => $chList));
        });
        $controllers->get('/{route}/{name}', function (Application $app, $route, $name) {

            $txt = $app['models']->load('pages', 'LoadStaticPage', "$name");
            $name = $txt['name'];
            $menu = $app['models']->load('mainMenu', 'getMainMenuList');
            $alias = $txt['alias'];
            $src = $txt['src'];
            $chList = $app['models']->load('pages', 'getChildrens', "$alias");

            return $app['twig']->render('page.twig', array(
                'mainmenu' => $menu,
                'staticpage' => 'yes',
                'name' => $name, 
                'alias' => 'about/' . $route . '/' . $alias, 
                'src' => "$src", 
                'childrensList' => $chList));
        });
        return $controllers;
    }

}

?>
