<?php

namespace Phalcon\Init\Dashboard\Models;

use Phalcon\Mvc\Model;
use Phalcon\Init\Dashboard\Models\Logs;

class Admin extends Model
{
    public $id_adm;
    public $username_adm;
    public $email_adm;
    public $password_adm;
 }