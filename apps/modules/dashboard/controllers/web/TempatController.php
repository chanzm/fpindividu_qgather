<?php

namespace Phalcon\Init\Dashboard\Controllers\Web;

use Phalcon\Mvc\Controller;
use Phalcon\Mvc\Dispatcher;
use Phalcon\Init\Dashboard\Models\Users;
use Phalcon\Init\Dashboard\Models\Admin;
use Phalcon\Init\Dashboard\Models\Review;
use Phalcon\Init\Dashboard\Models\Requesttempat;
use Phalcon\Init\Dashboard\Models\Tempat;
use Phalcon\Init\Dashboard\Models\Wilayah;
use Phalcon\Http\Request;
use Phalcon\Events\Manager as EventsManager;

class TempatController extends Controller
{

	public function awalAction($id)
	{       
		$wil = Wilayah::findFirst("id_wilayah='$id'");
		$tmpt= Tempat::find("id_wilayah='$id'");
		$getwil = $this->db->query("SELECT DISTINCT(Tempat.id_wilayah) from Tempat join Wilayah on Tempat.id_wilayah=Wilayah.id_wilayah where Tempat.id_wilayah='".$id."'")->fetchAll();
		$this->view->setVars(
			['getwil'=>$getwil,
		]);
		$this->view->wil = $wil;
		$this->view->tmpt=$tmpt;
		$this->view->pick('dashboard/tempat');
	}

	public function awaladminAction($id)
	{       
		$wil = Wilayah::findFirst("id_wilayah='$id'");
		$tmpt= Tempat::find("id_wilayah='$id'");
		$getwil = $this->db->query("SELECT DISTINCT(Tempat.id_wilayah) from Tempat join Wilayah on Tempat.id_wilayah=Wilayah.id_wilayah where Tempat.id_wilayah='".$id."'")->fetchAll();
		$this->view->setVars(
			['getwil'=>$getwil,
		]);
		$this->view->wil = $wil;
		$this->view->tmpt=$tmpt;
		$this->view->pick('dashboard/tempatadmin');
	}

	public function ajukanrekomAction($id)
	{    
		$wil = Tempat::findFirst("id_wilayah='$id'");  	
		$this->view->wil = $wil;
		$this->view->pick('dashboard/formpengajuan');
	}

	public function storepengajuanAction($id)
	{
		$ids = $this->session->get('user');
	    if ($ids == NULL) {
	        (new Response())->redirect('login')->send();          
	    }
	    $uploaddir1 = 'images/rekom/';
	    $uploadfile1 = $uploaddir1 . basename($_FILES['foto']['name']);

	    echo '<pre>';
	    if (move_uploaded_file($_FILES['foto']['tmp_name'], $uploadfile1))
	    {	  
	    	$img = $_FILES['foto']['name'];  
		    $req = new Requesttempat();
		    $req->id_wilayah = $this->request->getPost('id_wilayah');
	        $req->nama_tempat = $this->request->getPost('nama_tempat');
	        $req->foto = $img;
	        $req->deskripsi = $this->request->getPost('deskripsi');
	        $req->alamat = $this->request->getPost('alamat');
	        $req->jam_buka = $this->request->getPost('jam_buka');
	        $req->fb = $this->request->getPost('fb');
	        $req->harga = $this->request->getPost('harga');
	        $req->menu = $this->request->getPost('menu');
	        $req->telepon = $this->request->getPost('telepon');
	        $req->ig = $this->request->getPost('ig');
	        $req->status = '0';

	        $t = Tempat::findFirst("nama_tempat = '$req->nama_tempat'");
	        if ($t) { 
	            $this->flashSession->error("Tempat yang anda rekomkan sudah terdaftar.");
	            return $this->response->redirect('../../mintarekom'.'/'.$id);
	            // $this->response->redirect($_SERVER['HTTP_REFERER']);
	            // echo ;
	        }
	        else
	        {

	          $req->save();
	          $this->flashSession->success("Berhasil rekomendasi. Tunggu admin menyetujui rekomendasi");
	   		  return $this->response->redirect('../../dashboard/cek'.'/'.$id);
	        }
	    }
	    else
	    {
	    	echo "Possible file upload attack!\n";
	    }
        
    }

    public function addplaceadminAction($id)
    {    
    	$wil = Tempat::findFirst("id_wilayah='$id'");  	
    	$this->view->wil = $wil;
    	$this->view->pick('dashboard/form_addplace');
    }

	public function storeplaceadminAction($id)
	{
		$ids = $this->session->get('admin');
	    if ($ids == NULL) {
	        (new Response())->redirect('login')->send();          
	    }

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
	                $req->menu = $this->request->getPost('menu');
	                $tmpt->telepon = $this->request->getPost('telepon');
	                $tmpt->ig = $this->request->getPost('ig');
	                $tmpt->fb = $this->request->getPost('fb');
	                $tmpt->avg_rate = $this->request->getPost('avg_rate');

	                $m = $tmpt->id_wilayah;
	                $t = Tempat::findFirst("nama_tempat = '$tmpt->nama_tempat'");
	                if ($t) { 
	                    $this->flashSession->error("Tempat yang anda rekomkan sudah terdaftar.");
	                    return $this->response->redirect('/rekomadm'.'/'.$id);
	                    // echo "Tempat yang anda rekomkan sudah terdaftar.";
	                }
	                else
	                {

	                  $tmpt->save();
	                  return $this->response->redirect('dashboard/cekadmin'.'/'.$m);

	                }
	            } else {
	                echo "Possible file upload attack!\n";
	    		}
        
    }

	public function todetailAction($id)
	{

				$revv= Review::find("id_tempat='$id'");
				$rev = $this->db->query("SELECT * from Review join Tempat on Review.id_tempat=Tempat.id_tempat join Users on Review.id_usr=Users.id_usr where Tempat.id_tempat='$id'")->fetchAll();
				$det = $this->db->query("SELECT * from Tempat where id_tempat='$id'")->fetchAll();
				$jumlah =  $this->db->query("SELECT COUNT(id_review) as jml from Review where id_tempat='$id' GROUP BY id_tempat")->fetchAll();


				$this->view->setVars(
					['rev'=>$rev,
					'det'=>$det,
					'jumlah' =>$jumlah,
				]);
				$this->view->revv=$revv;
				$this->view->pick('dashboard/detailtempat');
	 }

	 public function todetailadminAction($id)
	 {
	 			$revv= Review::find("id_tempat='$id'");
	 			$rev = $this->db->query("SELECT * from Review join Tempat on Review.id_tempat=Tempat.id_tempat join Users on Review.id_usr=Users.id_usr where Tempat.id_tempat='$id'")->fetchAll();
	 			$det = $this->db->query("SELECT * from Tempat where id_tempat='$id'")->fetchAll();
	 			$jumlah =  $this->db->query("SELECT COUNT(id_review) as jml from Review where id_tempat='$id' GROUP BY id_tempat")->fetchAll();


	 			$this->view->setVars(
	 				['rev'=>$rev,
	 				'det'=>$det,
	 				'jumlah' =>$jumlah,
	 			]);
	 			$this->view->revv=$revv;
	 			$this->view->pick('dashboard/detailtempatadmin');
	  }

	  public function hapusplaceAction($id){    
	  	$tmp = Tempat::findFirst("id_tempat='$id'");
	  	$idwil = $tmp->id_wilayah;
	    $this->db->query("delete from Tempat where id_tempat='".$id."'");
	    return $this->response->redirect('dashboard/cekadmin'.'/'.$idwil);
	    // $this->response->redirect($_SERVER['HTTP_REFERER']);
	  }
	  public function editplaceAction($id){
        $_isAdmin = $this->session->get('admin');
        if (!$_isAdmin) 
        {
            $this->response->redirect('login');
        }

        $tmp = Tempat::findFirst("id_tempat='$id'");
        if($tmp)
        {
            $data = Tempat::findFirst("id_tempat='$id'");
            $this->view->pick('dashboard/editplace1');
            $this->view->data = $data;
        }
        else{
            $this->response->redirect('../../detailadmin'.'/'.$id);
        }
	  }
	  // public function storeeditplacAction(){
	  	// $id_tempat = $this->request->getPost('id_tempat');
    //     $nama_tempat = $this->request->getPost('nama_tempat');
    //     // foto
    //     $deskripsi = $this->request->getPost('deskripsi');
    //     $alamat = $this->request->getPost('alamat');
    //     $jam_buka = $this->request->getPost('jam_buka');
    //     $harga = $this->request->getPost('harga');
    //     // $req->menu = $this->request->getPost('menu');
    //     $telepon = $this->request->getPost('telepon');
    //     $ig = $this->request->getPost('ig');
    //     $fb = $this->request->getPost('fb');
    //     $avg_rate = $this->request->getPost('avg_rate');

    //     $p = Tempat::findFirst("id_tempat='$id_tempat'")
    //     $p->nama_tempat = $nama_tempat;
    //     $p->ig = $ig;
    //     $p->save();
        // $data=array(
        // "nama_tempat"=>$namatempat,
        // "ig"=>$ig
        // );

        // $this->db->where('id_tempat', $id_tempat);
        // $this->db->update('Tempat', $data);
        // $this->response->redirect('../../detailadmin'.'/'.$id_tempat);
	  // }

	  public function storeeditplaceAction()
	  {
	  			$uploaddir1 = 'images/rekom/';
	  			$uploadfile1 = $uploaddir1 . basename($_FILES['foto']['name']);

	  	        echo '<pre>';
	  			if (move_uploaded_file($_FILES['foto']['tmp_name'], $uploadfile1))
	  			{
	  	            $img = $_FILES['foto']['name'];
	  	            $id_tempat = $this->request->getPost('id_tempat');
	  	            $tempat = Tempat::findFirst("id_tempat='$id_tempat'");
	  	            $tempat->nama_tempat = $this->request->getPost('nama_tempat');
	  	            $tempat->foto = $img;
	  	            $tempat->deskripsi = $this->request->getPost('deskripsi');
	  	            $tempat->alamat = $this->request->getPost('alamat');
	  	            $tempat->jam_buka = $this->request->getPost('jam_buka');
	  	            $tempat->harga = $this->request->getPost('harga');
	  	            $tempat->menu = $this->request->getPost('menu');
	  	            $tempat->telepon = $this->request->getPost('telepon');
	  	            $tempat->ig = $this->request->getPost('ig');
	  	            $tempat->fb = $this->request->getPost('fb');
	  	            $tempat->avg_rate = $this->request->getPost('avg_rate');
	  	            if($tempat->update())
	  	            {
	  	            	$this->flashSession->success("Place has been edited !");
	  	            	$this->response->redirect('../../detailadmin'.'/'.$id_tempat);
	  	            }

	  	        } else {
	  	            echo "Possible file upload attack!\n";
	  			}
	  }

}