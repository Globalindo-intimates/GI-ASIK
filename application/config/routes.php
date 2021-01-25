<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/

$route['default_controller'] = 'administrator/Administrator';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

/* 
* 
* routes screen
*
*/

// screen sewing LT.1
$route['sewing/Lt1/ScreenA'] = 'admin_sewing_screen_1/viewScreenA';
$route['sewing/Lt1/ScreenA/(:any)'] = 'admin_sewing_screen_1/$1';

$route['sewing/Lt1/ScreenB'] = 'admin_sewing_screen_1/viewScreenB';
$route['sewing/Lt1/ScreenB/(:any)'] = 'admin_sewing_screen_1/$1';

$route['sewing/Lt1/ScreenC'] = 'admin_sewing_screen_1/viewScreenC';
$route['sewing/Lt1/ScreenC/(:any)'] = 'admin_sewing_screen_1/$1';

// screen sewing LT.2
$route['sewing/Lt2/ScreenA'] = 'admin_sewing_screen_2/viewScreenA';
$route['sewing/Lt2/ScreenA/(:any)'] = 'admin_sewing_screen_2/$1';

$route['sewing/Lt2/ScreenB'] = 'admin_sewing_screen_2/viewScreenB';
$route['sewing/Lt2/ScreenB/(:any)'] = 'admin_sewing_screen_2/$1';

$route['sewing/Lt2/ScreenC'] = 'admin_sewing_screen_2/viewScreenC';
$route['sewing/Lt2/ScreenC/(:any)'] = 'admin_sewing_screen_2/$1';

// screen sewing LT.3
$route['sewing/Lt3/ScreenA'] = 'admin_sewing_screen_3/viewScreenA';
$route['sewing/Lt3/ScreenA/(:any)'] = 'admin_sewing_screen_3/$1';

$route['sewing/Lt3/ScreenB'] = 'admin_sewing_screen_3/viewScreenB';
$route['sewing/Lt3/ScreenB/(:any)'] = 'admin_sewing_screen_3/$1';

$route['sewing/Lt3/ScreenC'] = 'admin_sewing_screen_3/viewScreenC';
$route['sewing/Lt3/ScreenC/(:any)'] = 'admin_sewing_screen_3/$1';

//screen cutting
$route['cutting/Trimstore'] = 'admin_cutting/viewScreanA';
$route['cutting/Trimstore/(:any)'] = 'admin_cutting/$1';  

// screan cutting wip
$route['cutting/Wip'] = 'admin_cutting/viewScreanB';
$route['cutting/Wip/(:any)'] = 'admin_cutting/$1'; 

// $route['cutting/Wip'] = 'admin_cutting/viewScreanA';
// $route['cutting/Wip/(:any)'] = 'admin_cutting/$1'; 
 
//screen molding
$route['cutting/Molding'] = 'admin_molding/index';



/* 
* 
* routes admin
*
*/

$route['administrator/user'] = 'user/index';
$route['administrator/user/(:any)'] = 'user/$1';

$route['administrator/area'] = 'admin_area/index';
$route['administrator/area/(:any)'] = 'admin_area/$1';
$route['administrator/area/(:any)/(:any)'] = 'admin_area/$1/$2';
$route['administrator/area/(:any)/(:any)/(:any)'] = 'admin_area/$1/$2/$3';

$route['administrator/screen'] = 'admin_screen/index';
$route['administrator/screen/(:any)'] = 'admin_screen/$1';
$route['administrator/screen/(:any)/(:any)'] = 'admin_screen/$1/$2';
$route['administrator/screen/(:any)/(:any)/(:any)'] = 'admin_screen/$1/$2/$3';

// videos
$route['administrator/videos'] = 'admin_videos/index';
$route['administrator/videos/(:any)'] = 'admin_videos/$1';
$route['administrator/videos/(:any)/(:any)'] = 'admin_videos/$1/$2';
$route['administrator/videos/(:any)/(:any)/(:any)'] = 'admin_videos/$1/$2/$3';

// line
$route['administrator/lines'] = 'admin_line/index';
$route['administrator/lines/(:any)'] = 'admin_line/$1';
$route['administrator/lines/(:any)/(:any)'] = 'admin_line/$1/$2';
$route['administrator/lines/(:any)/(:any)/(:any)'] = 'admin_line/$1/$2/$3';

// deffect
$route['administrator/deffects'] = 'admin_deffect/index';
$route['administrator/deffects/(:any)'] = 'admin_deffect/$1';
$route['administrator/deffects/(:any)/(:any)'] = 'admin_deffect/$1/$2';
$route['administrator/deffects/(:any)/(:any)/(:any)'] = 'admin_deffect/$1/$2/$3';

// messages 
$route['administrator/messages'] = 'messages/index';
$route['administrator/messages/(:any)'] = 'messages/$1';
$route['administrator/messages/(:any)/(:any)'] = 'messages/$1/$2';
$route['administrator/messages/(:any)/(:any)/(:any)'] = 'messages/$1/$2/$3';

// screen live
$route['administrator/screenLive'] = 'screen_line_admin/index';
$route['administrator/screenLive/(:any)'] = 'screen_line_admin/$1';
$route['administrator/screenLive/(:any)/(:any)'] = 'screen_line_admin/$1/$2';
$route['administrator/screenLive/(:any)/(:any)/(:any)'] = 'screen_line_admin/$1/$2/$3';


// sett. screen line live
$route['administrator/setScreenLineLive'] = 'admin_sett_screen_line/index';
$route['administrator/setScreenLineLive/(:any)'] = 'admin_sett_screen_line/$1';
$route['administrator/setScreenLineLive/(:any)/(:any)'] = 'admin_sett_screen_line/$1/$2';
$route['administrator/setScreenLineLive/(:any)/(:any)/(:any)'] = 'admin_sett_screen_line/$1/$2/$3';

/* 
* 
* routes operator / Line
*
*/
$route['operator/screenLine'] = 'screen_line/index';
$route['operator/screenLine/(:any)'] = 'screen_line/$1';

/* 
* 
* routes manager
*
*/

// messages 
$route['manager/messages'] = 'messages/index';
$route['manager/messages/(:any)'] = 'messages/$1';
$route['manager/messages/(:any)/(:any)'] = 'messages/$1/$2';
$route['manager/messages/(:any)/(:any)/(:any)'] = 'messages/$1/$2/$3';

// screen live
$route['manager/screenLive'] = 'screen_line_manager/index';
$route['manager/screenLive/(:any)'] = 'screen_line_manager/$1';
$route['manager/screenLive/(:any)/(:any)'] = 'screen_line_manager/$1/$2';
$route['manager/screenLive/(:any)/(:any)/(:any)'] = 'screen_line_manager/$1/$2/$3';


$route['pages/(:any)'] = 'pages/index/$1';
