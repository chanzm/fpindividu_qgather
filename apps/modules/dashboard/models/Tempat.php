<?php

namespace Phalcon\Init\Dashboard\Models;

use Phalcon\Mvc\Model;
use Phalcon\Init\Dashboard\Models\Logs;

class Tempat extends Model
{
    public $id_tempat;
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
    public $avg_rate;
 }