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

class RequesttempatController extends Controller
{

	public function tambahpengajuanAction($id)
	{
		$_isAdmin = $this->session->get('admin');
        if (!$_isAdmin) 
        {
            $this->response->redirect('login');
        }

        $tmp = Requesttempat::findFirst("id_request='$id'");
        if($tmp)
        {
            $data = Requesttempat::findFirst("id_request='$id'");
            $this->view->pick('dashboard/editpengajuan');
            $this->view->data = $data;
        }
        else{
            $this->flashSession->success("Yakin ada request ?");
        }
	}

    public function storepengajuanAction($id)
    {
                $uploaddir1 = 'images/rekom/';
                $uploadfile1 = $uploaddir1 . basename($_FILES['foto']['name']);

                echo '<pre>';
                if (move_uploaded_file($_FILES['foto']['tmp_name'], $uploadfile1))
                { 
                    $img = $_FILES['foto']['name'];             
                    $tmpt = new Tempat();
                    $tmpt->id_wilayah = $this->request->getPost('id_wilayah');
                    $tmpt->nama_tempat = $this->request->getPost('nama_tempat');
                    $tmpt->foto = $img;
                    $tmpt->deskripsi = $this->request->getPost('deskripsi');
                    $tmpt->alamat = $this->request->getPost('alamat');
                    $tmpt->jam_buka = $this->request->getPost('jam_buka');
                    $tmpt->harga = $this->request->getPost('harga');
                    $tmpt->menu = $this->request->getPost('menu');
                    $tmpt->telepon = $this->request->getPost('telepon');
                    $tmpt->ig = $this->request->getPost('ig');
                    $tmpt->fb = $this->request->getPost('fb');
                    $tmpt->avg_rate = 9;

                    $m = $tmpt->id_wilayah;
                    $t = Tempat::findFirst("nama_tempat = '$tmpt->nama_tempat'");
                    if ($t) { 
                        $this->flashSession->error("Tempat sudah terdaftar.");
                        return $this->response->redirect('/dashboard/adm/request');
                        // echo "Tempat yang anda rekomkan sudah terdaftar.";
                    }
                    else
                    {

                      $tmpt->save();
                      $req = Requesttempat::findFirst("id_request='$id'");
                      $req->status = 2;
                      $req->save();
                      return $this->response->redirect('dashboard/cekadmin'.'/'.$m);
                    }
                }
                else
                {
                    echo "Possible file upload attack!\n";
                }
    }

    public function storepengajuanawalAction($id)
    {
        $tmpt = new Tempat();
        $tmpt->id_wilayah = $this->request->getPost('id_wilayah');
        $tmpt->nama_tempat = $this->request->getPost('nama_tempat');
        // foto
        $tmpt->deskripsi = $this->request->getPost('deskripsi');
        $tmpt->alamat = $this->request->getPost('alamat');
        $tmpt->jam_buka = $this->request->getPost('jam_buka');
        $tmpt->harga = $this->request->getPost('harga');
        $tmpt->menu = $this->request->getPost('menu');
        $tmpt->telepon = $this->request->getPost('telepon');
        $tmpt->ig = $this->request->getPost('ig');
        $tmpt->fb = $this->request->getPost('fb');
        $tmpt->avg_rate = 9;

        $m = $tmpt->id_wilayah;
        $t = Tempat::findFirst("nama_tempat = '$tmpt->nama_tempat'");
        if ($t) { 
            $this->flashSession->error("Tempat sudah terdaftar.");
            return $this->response->redirect('/dashboard/adm/request');
            // echo "Tempat yang anda rekomkan sudah terdaftar.";
        }
        else
        {

          $tmpt->save();
          $req = Requesttempat::findFirst("id_request='$id'");
          $req->status = 2;
          $req->save();
          return $this->response->redirect('dashboard/cekadmin'.'/'.$m);
        }
    }



}