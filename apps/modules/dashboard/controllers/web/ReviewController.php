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

        $uploaddir2 = 'images/review/';
        $uploadfile2 = $uploaddir2 . basename($_FILES['foto_rev']['name']);

        echo '<pre>';
        if (move_uploaded_file($_FILES['foto_rev']['tmp_name'], $uploadfile2))
        { 
            $img = $_FILES['foto_rev']['name'];       
            $rev = new Review();
            $rev->id_usr = $this->session->get('user')['id_usr'];
            $rev->id_review = $this->request->getPost('id_review');
            $rev->id_tempat = $this->request->getPost('id_tempat');
            $rev->comment = $this->request->getPost('comment');
            $rev->foto_rev = $img;
            $rev->tgl_visit = $this->request->getPost('tgl_visit');
            $rev->nilai = $this->request->getPost('nilai');
            $rev->save();
            // echo "masuk";
            $ambil =$rev->id_tempat;
            return $this->response->redirect('detail' . '/' . $ambil);
        }
        else
        {
            $rev = new Review();
            $rev->id_usr = $this->session->get('user')['id_usr'];
            $rev->id_review = $this->request->getPost('id_review');
            $rev->id_tempat = $this->request->getPost('id_tempat');
            $rev->comment = $this->request->getPost('comment');
            $rev->tgl_visit = $this->request->getPost('tgl_visit');
            $rev->nilai = $this->request->getPost('nilai');
            $rev->save();
            $ambil =$rev->id_tempat;
            return $this->response->redirect('detail' . '/' . $ambil);
        }
    }

      public function hapusrevAction($id){ 
        $rev = Review::findFirst("id_review='$id'");
        $tmpt = Tempat::findFirst("id_tempat='$rev->id_tempat'");
        $idtmp = $tmpt->id_tempat;

        $this->db->query("delete from Review where id_review='".$id."'");
        return $this->response->redirect('detail' . '/' . $idtmp);

    }

    public function hapusrevadminAction($id){   
        $rev = Review::findFirst("id_review='$id'");
        $tmpt = Tempat::findFirst("id_tempat='$rev->id_tempat'");
        $idtmp = $tmpt->id_tempat; 
        $this->db->query("delete from Review where id_review='".$id."'");
        return $this->response->redirect('detailadmin'.'/'.$idtmp);
    }


}
