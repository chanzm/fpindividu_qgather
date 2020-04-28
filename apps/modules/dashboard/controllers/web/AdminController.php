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
use Phalcon\Http\Response;

class AdminController extends Controller
{

     public function loginAction()
     {
     	 $_isAdmin = $this->session->get('admin')['role'];
         $_isUser = $this->session->get('user')['role'];
         if ($_isAdmin) {
             $this->response->redirect('/dashboardadm');
         }
         if($_isUser)
         {
             $this->response->redirect('dashboard');
         }
         $this->view->pick('dashboard/login');

 	}

 	public function storeloginAction()
     {
         if($this->request->getPost('role')=="admin")
         {
         	$username_adm = $this->request->getPost('username');
         	$password_adm = $this->request->getPost('password');

 	        $user = Admin::findFirst("username_adm = '$username_adm'");

 	        if ($user){
 	            if($password_adm == $user->password_adm){
 	                $this->session->set(
 	                    'admin',
 	                    [
 	                        'id_adm' => $user->id_adm,
 	                        'username' => $user->username_adm,
 	                        'role' => 'admin'
 	                    ]
 	                );

 	                (new Response())->redirect('dashboardadm')->send();
 	            }
 	            else{
 	                $this->flashSession->error("Gagal masuk sebagai admin. Invalid email or Password or Role");
 	                $this->response->redirect('login');
 	               // echo "salah woe";
 	            }
 	        }
 	        else{
 	            $this->flashSession->error("Gagal masuk sebagai admin. Invalid email or Password or Role");
 	            $this->response->redirect('login');
 	        	//echo "slah dol";
 	        }
         }

       elseif($this->request->getPost('role')=="user")
         {
            $username_usr = $this->request->getPost('username');
            $password = $this->request->getPost('password');
 	        $user = Users::findFirst("username_usr = '$username_usr'");
 	        if ($user){
 	        	if($user->status == 1 ){
 		            if($this->security->checkHash($password, $user->password)){
 		                $this->session->set(
 		                    'user',
 		                    [
 		                        'id_usr' => $user->id_usr,
 		                        'username' => $user->username_usr,
 		                        'role' => 'user',
 		                    ]
 		                );

 		                (new Response())->redirect('dashboard')->send();
 		            }
 		            else{
 		                $this->flashSession->error("Gagal masuk sebagai user. Invalid email or Password or Role.");
 		                $this->response->redirect('login');
                        // echo "mampus sala";
 		            }
 		        }
 		        else {
 		        	// echo"belum verifikasi";
 		        	// die();
 		        	$this->flashSession->error("Gagal masuk sebagai user. Belum diverifikasi, silakan hubungi admin.");
 		            
 		            $this->response->redirect('login');
 		        }
 	    	}
 	        else{
 	            $this->flashSession->error("Gagal masuk sebagai user. Invalid email or Password or Role");
 	            $this->response->redirect('login');
                // echo "sala lu";
 	        }
         }
        else
        {
            $this->flashSession->error("Masukkan role anda");
            $this->response->redirect('login');
        }


     }

    public function logoutAction()
    {
        $this->session->destroy();
        $this->response->redirect("/");
    }

    public function listuserAction()
    {
        $usr = Users::find();
        $this->view->usr = $usr;
        $this->view->pick('dashboard/listuser');
    }

    public function verifuserAction($id)
    {
        $user = Users::findFirst("id_usr='$id'");
        $user->status = 1;
        $user->save();
         return $this->response->redirect('/dashboard/adm/listusr');
    }

    public function listpermintaanAction()
    {
        $req = Requesttempat::find();
        $this->view->req = $req;
        $this->view->pick('dashboard/listpermintaantempat');
    }

    public function verifrequAction($id)
    {
        $req = Requesttempat::findFirst("id_request='$id'");
        $req->status = 1;
        $req->save();
        return $this->response->redirect('/dashboard/adm/request');
    }

}