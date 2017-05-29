<?php

namespace Controllers;

use Silex\Application;
use Silex\Route;
use Silex\ControllerProviderInterface;
use Silex\ControllerCollection;

class seminarsControllerProvider implements ControllerProviderInterface {

    public function connect(Application $app)
    {
        // creates a new controller based on the default route
        $controllers = $app['controllers_factory'];

        $controllers->get('/', function (Application $app) {
            $seminars = $app['models']->load('seminars', 'getSeminarsList');
            $menu = $app['models']->load('mainMenu', 'getMainMenuList');
            
            return $app['twig']->render('page.twig', array(
                'name' => 'Семинары :', 
                'mainmenu' => $menu ,
                'seminars' => $seminars));
        });
        $controllers->get('/{id}', function (Application $app, $id) {
            $seminar = $app['models']->load('seminars', 'getSeminarById',"$id");
            $menu = $app['models']->load('mainMenu', 'getMainMenuList');
            
            return $app['twig']->render('page.twig', array(
                'name' => 'Семинары :', 
                'alias' => 'seminars', 
                'mainmenu' => $menu ,
                'seminar' => $seminar));            
            
        });
        $controllers->get('/date/{date}', function (Application $app, $date) {
            $seminars = $app['models']->load('seminars', 'getSeminarsByDate',"$date");
            $menu = $app['models']->load('mainMenu', 'getMainMenuList');
            
            return $app['twig']->render('page.twig', array(
                'name' => 'Семинары :', 
                'alias' => 'seminars', 
                'date' => $date,
                'mainmenu' => $menu ,
                'seminars' => $seminars));            
            
        });        
        return $controllers;
    }
}
?>
