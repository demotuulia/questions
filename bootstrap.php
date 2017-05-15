<?php
/**
 * Bootsrap
 *
 */
require_once( __DIR__ . '/Lib/autoloader.php');
require_once( __DIR__ . '/config.php');






/**
 * Do  routing
 */

 // Default controller and action 
//(in this example we only have default, others we would try to read this also from the uri)
$controllerName = '\Lib\Controllers\ListController';
$action = 'renderListAction';


// Call action
$controller = new \Lib\Controllers\ListController();
$content = $controller->$action();
