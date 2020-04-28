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

class ReviewController extends Controller
{

	public function storereviewAction()
	{
		$id = $this->session->get('user');
	    if ($id == NULL) {
	        (new Response())->redirect('login')->send();          
	    }
	    $rev = new Review();
	    $rev->id_usr = $this->session->get('user')['id_usr'];
	    $rev->id_review = $this->request->getPost('id_review');
	    $rev->id_tempat = $this->request->getPost('id_tempat');
	    $rev->comment = $this->request->getPost('comment');
	    // $rev->foto = 
	    $rev->tgl_visit = $this->request->getPost('tgl_visit');
	    $rev->nilai = $this->request->getPost('nilai');
	    $rev->save();
	    // echo "masuk";
	    $ambil =$rev->id_tempat;
	    return $this->response->redirect('detail' . '/' . $ambil);
	    // $this->view->pick('dashboard/detailtempat');
	}


    public function hapusrevlalaAction($id){
    	// $session = $this->session->get('user')['id_usr'];
    	$punyauser = $this->db->query("SELECT Users.id_usr from Users join Review ON Users.id_usr=Review.id_usr")->fetchAll();
    	$data = array();

    	// foreach ($punyauser as $punyauser) {

    	//     $data[] = array(
    	//         'id_usr' => $punyauser->id_usr,

    	//     );

    	// }
   
    		$t = $this->db->query("SELECT Tempat.id_tempat from Tempat join Review ON Tempat.id_tempat=Review.id_tempat where Review.id_review='".$id."'")->fetchAll();
            $this->db->query("delete from Review where id_review='".$id."'");
            $this->view->setVars(
            	['punyauser'=>$punyauser,
            ]);
            return $this->response->redirect('../../detail' . '/' . $t);

    }

      public function hapusrevAction($id){ 
      	$rev = Review::findFirst("id_review='$id'");
      	$tmpt = Tempat::findFirst("id_tempat='$rev->id_tempat'");
      	$idtmp = $tmpt->id_tempat;

    	$this->db->query("delete from Review where id_review='".$id."'");
    	return $this->response->redirect('detail' . '/' . $idtmp);
    	// return $this->response->redirect('/dashboard')
    	// $this->view->pick('dashboard/tempat');


    }

    public function hapusrevadminAction($id){   
	    $rev = Review::findFirst("id_review='$id'");
	    $tmpt = Tempat::findFirst("id_tempat='$rev->id_tempat'");
	    $idtmp = $tmpt->id_tempat; 
    		// $m = $this->db->query("SELECT Tempat.id_tempat from Tempat join Review ON Tempat.id_tempat=Review.id_tempat where Review.id_review='$id'")->fetchAll();
    		// $l=Tempat::findFirst("id_tempat = '$id'");
        $this->db->query("delete from Review where id_review='".$id."'");
        return $this->response->redirect('detailadmin'.'/'.$idtmp);
            // return $this->response->redirect('/dashboardadm')
    }


}