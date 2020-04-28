<?php

namespace Phalcon\Init\Dashboard\Models;

use Phalcon\Mvc\Model;
use Phalcon\Init\Dashboard\Models\Logs;

class Requesttempat extends Model
{
    public $id_request;
    public $id_wilayah;
    public $nama_tempat;
    public $foto;
    public $deskripsi;
    public $alamat;
    public $jam_buka;
    public $harga;
    public $menu;
    public $telepon;
    public $ig;
    public $fb;
    public $status;
 }