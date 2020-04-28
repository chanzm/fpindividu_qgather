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

class UserController extends Controller
{

	public function registerAction()
	{
		 $this->view->pick('dashboard/register');
	}

	public function storeregisterAction()
	{
        $usr = new Users();
        $usr->nama_usr = $this->request->getPost('nama_usr');
        $usr->username_usr = $this->request->getPost('username_usr');
        $usr->no_ktp = $this->request->getPost('no_ktp');
        $usr->email = $this->request->getPost('email');
        $usr->status = '0';
        $password = $this->request->getPost('password');
        $usr->password = $this->security->hash($password);

        $retypepass = $this->request->getPost('retypepass');
        $usr->retypepass = $this->security->hash($retypepass);

        $u = Users::findFirst("username_usr = '$usr->username_usr'");
        if ($u) { 
            $this->flashSession->error("Gagal register. Username telah digunakan.");
            return $this->response->redirect('daftaradmin');
            // echo "username sudah digunakan.";
        }
        else
        {
        	//echo "hi canteq";
        	// die();
           $usr->save();
           $this->response->redirect('login');
         //    // printf (strlen($admin->password));
            //echo "masuk";
         //    // return $this->response->redirect('loginadmin');
        }
        
    }

}