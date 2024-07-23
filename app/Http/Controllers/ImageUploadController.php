<?php

namespace App\Http\Controllers;

use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;

class ImageUploadController extends Controller
{
    //\

    public function indexUpload() {
        return view('users.uploadSigcard');
    }
    public function store(Request $request): RedirectResponse
    {
        $validated = $request->validate([
            ''
        ]);

        return redirect('customer/');
    }
}
