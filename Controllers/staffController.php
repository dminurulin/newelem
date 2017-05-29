<?php

namespace Controllers;

use Silex\Application;
use Silex\Route;
use Silex\ControllerProviderInterface;
use Silex\ControllerCollection;

class staffControllerProvider implements ControllerProviderInterface {

    public function connect(Application $app) {
        // creates a new controller based on the default route
        $controllers = $app['controllers_factory'];
        $controllers->get('/', function (Application $app) {
            $alias = 'staff';
            $stafflist = $app['models']->load('staffModel', 'getStaffList');
            $menu = $app['models']->load('mainMenu', 'getMainMenuList');
            $name = $app['models']->load('mainMenu', 'getNameByAlias', "$alias");
            return $app['twig']->render('page.twig', array(
                        'name' => $name,
                        'mainmenu' => $menu,
                        'stafflist' => $stafflist
            ));
        });
        
        $controllers->get('/{id}', function (Application $app, $id) {
            $alias = 'staff';
            $staff = $app['models']->load('staffModel', 'getStaffById', $id);
            $menu = $app['models']->load('mainMenu', 'getMainMenuList');
            $name = $app['models']->load('mainMenu', 'getNameByAlias', "$alias");
            return $app['twig']->render('page.twig', array(
                        'name' => $name,
                        'alias' => $alias,
                        'mainmenu' => $menu,
                        'staff' => $staff
            ));
        });
        
        return $controllers;
    }

}

?>
