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

    // public function beforeExecuteRoute(Dispatcher $dis)
    // {
    //     // var_dump();die();
    //     // if(!$this->session->has('auth') && $dis->getactionName()!='index') $this->response->redirect('/');
    // }

    public function indexAction()
    {
        $this->view->pick('dashboard/home');
        // $db = $this->getDI()->get('db');
        // $sql = "Select nama_wilayah from Wilayah where id_wilayah = 1";
        // $result = $db->fetchOne($sql, \Phalcon\Db\Enum::FETCH_ASSOC);
        // echo var_dump($result);

    }

    // public function adduserAction()
    // {
    //     $user = new Users();
    //     $user->username = "rere";
    //     $user->password = "lala";
    //     $user->save();
    //     if($user->save())
    //     {
    //         echo "bhazel";
    //     }
    //     // $var_dump($result);
    // }

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

    public function cobaAction(){
        $db = $this->getDI()->get('db');

        $sql = "Select * from User";

        $result = $db->fetchOne($sql, \Phalcon\Db\Enum::FETCH_ASSOC);

        echo var_dump($result);
    } 
     // public function storeAction()
    // {
    //     // $user = new Users();
    //  // $request = new Request();
    //     // $user->username = $request->getPost('username');
    //     // $user->email = $request->getPost('email');
    //     // $user->password = $request->getPost('password');
    //     // var_dump($user);die;
    //  // $user->save();
    //     // $this->response->redirect('/');
    // }

    // public function loginAction()
    // {
    //     // $request = new Request();
    //     // $username = $request->getPost('em');
    //     // $user = Users::findFirst("email='$username'");
    //     // $pass = $request->getPost('pw');
    //     // $users = Users::find();
    //     // $this->view->users = $users;
    //     // var_dump($user->password);die();
    //     // if($user)
    //     // {
    //     //     if($user->password == $pass){
    //     //         $this->session->set('auth',['username' => $user->username]);
    //     //         $this->flashSession->success('Anda telah login');
    //             // var_dump("masuk");die();
    //     //     }
    //     //     else{
    //     //         $this->flashSession->error('Password anda salah');
    //     //     }
    //     // }
    //     // else{
    //     //     $this->flashSession->error('Email tidak ditemukan');
    //     // }
    //     // $this->response->redirect('/');
    // }

    // public function logoutAction()
    // {
    //     // $this->session->destroy();
    //     // // $this->flashSession->success('Anda telah logout');
    //     // $this->response->redirect('/');
    // }

}   