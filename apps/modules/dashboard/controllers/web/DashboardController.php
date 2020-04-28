<?php

namespace Phalcon\Init\Dashboard\Controllers\Web;

use Phalcon\Mvc\Controller;
use Phalcon\Mvc\Dispatcher;
use Phalcon\Init\Dashboard\Models\Users;
use Phalcon\Init\Dashboard\Models\Admin;
use Phalcon\Init\Dashboard\Models\Review;
use Phalcon\Init\Dashboard\Models\Tempat;
use Phalcon\Init\Dashboard\Models\Wilayah;
use Phalcon\Init\Dashboard\Models\Requesttempat;
use Phalcon\Http\Request;
use Phalcon\Events\Manager as EventsManager;

class DashboardController extends Controller
{

    public function indexAction()
    {
        $this->view->pick('dashboard/home');

    }

    public function dashboardAction(){
        
 
        $wil1 = Wilayah::findFirst(1);
        $wil2 = Wilayah::findFirst(2);
        $wil3 = Wilayah::findFirst(3);
        $wil4 = Wilayah::findFirst(4);
        $wil5 = Wilayah::findFirst(5);        
        $this->view->wil1 = $wil1;
        $this->view->wil2 = $wil2;
        $this->view->wil3 = $wil3;
        $this->view->wil4 = $wil4;
        $this->view->wil5 = $wil5;
    
        $this->view->pick('dashboard/dashboard');

    } 

    public function dashboardadminAction(){
        $wil1 = Wilayah::findFirst(1);
        $wil2 = Wilayah::findFirst(2);
        $wil3 = Wilayah::findFirst(3);
        $wil4 = Wilayah::findFirst(4);
        $wil5 = Wilayah::findFirst(5);        
        $this->view->wil1 = $wil1;
        $this->view->wil2 = $wil2;
        $this->view->wil3 = $wil3;
        $this->view->wil4 = $wil4;
        $this->view->wil5 = $wil5;    
        $this->view->pick('dashboard/dashboardadmin');
    }  


}   