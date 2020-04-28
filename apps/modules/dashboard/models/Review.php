<?php

namespace Phalcon\Init\Dashboard\Models;

use Phalcon\Mvc\Model;
use Phalcon\Init\Dashboard\Models\Logs;

class Review extends Model
{
    public $id_review;
    public $id_usr;
    public $id_tempat;
    public $comment;
    public $foto;
    public $tgl_visit;
    public $nilai;
 }