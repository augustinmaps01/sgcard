<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SuperAdmin extends Controller
{
    //
    public function customerView() {
        return view('roles.superAdmin.customer');
    }
}
