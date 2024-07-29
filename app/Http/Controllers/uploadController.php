<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Dataprivacy;
use App\Models\Nais;
use App\Models\Sigcard;
use Illuminate\Http\Request;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;
use Illuminate\Support\Facades\File;



class uploadController extends Controller
{
    //? users upload view
    public function indexUpload() {
        return view('roles.users.upload');
    }
    //? superadmin upload
    public function create()  {
        $customer = Customer::latest()->first();
        return view('roles.superAdmin.upload', compact('customer'));

    }
    public function newUpload() {
        return view('roles.superAdmin.upload');
    }

    public function uploadView() {
        $customer = Customer::latest()->first();
        return view('roles.superAdmin.upload', compact('customer'));
    }


    public function store(Request $request)
    {

        $request->validate([
            'customer_id' => 'required|numeric',
            'card_front' => 'required|mimes:png,jpg,jpeg,gif',
            'card_back' => 'required|mimes:png,jpg,jpeg,gif',
            'nais_front' => 'required|mimes:png,jpg,jpeg,gif',
            'nais_back' => 'required|mimes:png,jpg,jpeg,gif',
            'dpr_front' => 'required|mimes:png,jpg,jpeg,gif',
            'dpr_back' => 'required|mimes:png,jpg,jpeg,gif'
        ]);



        //* sigcard uploading

        $customer = Customer::join('branch', 'sgcard_customer.brid', '=', 'branch.brid')
                    ->select('sgcard_customer.*', 'branch.*')->latest()->first();

        $directoryName = $customer->lname . ','. ' ' . $customer->fname;
        $branch_id = $customer->brid;
        $location_Path = [
            '01 - MAIN',
            '02 - JASAAN',
            '03 - SALAY',
            '04 - CDO',
            '05 - MARAMAG',
            '06 - GINGOOG BLU',
            '07 - CAMIGUIN BLU',
            '08 - BUTUAN BLU',
            '09 - MANOLO BLU'
                        ];
        $branchLocationMap = [
            2 => 0, //? Main branch
            3 => 1, //? Jasaan branch
            4 => 2, //? Salay branch
            5 => 3, //? CDO branch
            6 => 4, //? Maramag branch
            7 => 5, //? Gingoog BLU
            8 => 6, //? Camiguin BLU
            9 => 7, //? Butuan BLU
            10 => 8, //? Manolo BLU
        ];

        function resizeImage($file, $width, $height) {
            // Create a new ImageManager instance
            $manager = new ImageManager(new Driver());

            // Read the image from the file
            $image = $manager->read($file);

            // Scale down the image to fit within the specified width and height
            $image->scaleDown(width: $width);
            $image->scaleDown(height: $height);

            // Save the resized image back to the file
            $image->save($file);
        }
        if ($request->has('card_front')) {
        $file = $request->file('card_front');
            if (array_key_exists($branch_id, $branchLocationMap)) {
                $location_index = $branchLocationMap[$branch_id];
                $location_dir = 'img/uploads/' . $location_Path[$location_index] . '/' . $directoryName . '/';
                $fullLocationDir = public_path($location_dir);

                if (!File::exists($fullLocationDir)) {
                    // Create the directory if it doesn't exist
                    File::makeDirectory($fullLocationDir, 0777, true);
                }
            }
            $extensions = $file->getClientOriginalExtension();
            $imageName = 'SIGCARD' . '-' . 'front' . '.' . $extensions;
            $width = 800;
            $height = 900;
            resizeImage($file, $width, $height);
            $filePath = $location_dir . $imageName;
            // Move the file to the directory
            $file->move($fullLocationDir, $imageName);
            $sigcardFrontPath = $filePath;
            // Now $sigcardFrontPath contains the relative path from the public directory
            }

            if ($request->has('card_back')) {
                $file = $request->file('card_back');
                if (array_key_exists($branch_id, $branchLocationMap)) {
                    $location_index = $branchLocationMap[$branch_id];
                    $location_dir = 'img/uploads/' . $location_Path[$location_index] . '/' . $directoryName . '/';
                    $fullLocationDir = public_path($location_dir);

                    if (!File::exists($fullLocationDir)) {
                        // Create the directory if it doesn't exist
                        File::makeDirectory($fullLocationDir, 0777, true);
                    }
                }
               $extensions = $file->getClientOriginalExtension();
               $imageName = 'SIGCARD' . '-' . 'bck' . '.' . $extensions;
               $width = 800;
               $height = 900;
               resizeImage($file, $width, $height);
               $filePath = $location_dir . $imageName;
               // Move the file to the directory
               $file->move($fullLocationDir, $imageName);
               $sigcardBackPath = $filePath;
            }

        $sigcard = new Sigcard;
        $sigcard->card_front = $sigcardFrontPath;
        $sigcard->card_back = $sigcardBackPath;
        $sigcard->custid = $request->customer_id;
        $sigcard->save();

        //* NAIS uploading
        if ($request->has('nais_front')) {
            $file = $request->file('nais_front');
            if (array_key_exists($branch_id, $branchLocationMap)) {
                $location_index = $branchLocationMap[$branch_id];
                $location_dir = 'img/uploads/' . $location_Path[$location_index] . '/' . $directoryName . '/';
                $fullLocationDir = public_path($location_dir);

                if (!File::exists($fullLocationDir)) {
                    // Create the directory if it doesn't exist
                    File::makeDirectory($fullLocationDir, 0777, true);
                }
            }
            $extensions = $file->getClientOriginalExtension();
            $imageName = 'NAIS' . '-' . 'front' . '.' . $extensions;
            $width = 800;
            $height = 900;
            resizeImage($file, $width, $height);
            $filePath = $location_dir . $imageName;
            // Move the file to the directory
            $file->move($fullLocationDir, $imageName);
            $naisFrontPath = $filePath;
        }

        if ($request->has('nais_back')) {
            $file = $request->file('nais_back');
            if (array_key_exists($branch_id, $branchLocationMap)) {
                $location_index = $branchLocationMap[$branch_id];
                $location_dir = 'img/uploads/' . $location_Path[$location_index] . '/' . $directoryName . '/';
                $fullLocationDir = public_path($location_dir);

                if (!File::exists($fullLocationDir)) {
                    // Create the directory if it doesn't exist
                    File::makeDirectory($fullLocationDir, 0777, true);
                }
            }
           $extensions = $file->getClientOriginalExtension();
           $imageName = 'NAIS' . '-' . 'bck' . '.' . $extensions;
           $width = 800;
            $height = 900;
            resizeImage($file, $width, $height);
           $filePath = $location_dir . $imageName;
           // Move the file to the directory
           $file->move($fullLocationDir, $imageName);
            $naisBackPath = $filePath;
        }

        $nais = new Nais();
        $nais->nais_front = $naisFrontPath;
        $nais->nais_back = $naisBackPath ;
        $nais->custid = $request->customer_id;
        $nais->save();

        //* Data privacy uploading
        if ($request->has('dpr_front')) {
            $file = $request->file('dpr_front');
            if (array_key_exists($branch_id, $branchLocationMap)) {
                $location_index = $branchLocationMap[$branch_id];
                $location_dir = 'img/uploads/' . $location_Path[$location_index] . '/' . $directoryName . '/';
                $fullLocationDir = public_path($location_dir);

                if (!File::exists($fullLocationDir)) {
                    // Create the directory if it doesn't exist
                    File::makeDirectory($fullLocationDir, 0777, true);
                }
            }

            $extensions = $file->getClientOriginalExtension();
            $imageName = 'DATA PRIVACY' . '-' . 'front' . '.' . $extensions;
            $width = 800;
            $height = 900;
            resizeImage($file, $width, $height);
            $filePath = $location_dir . $imageName;
            // Move the file to the directory
            $file->move($fullLocationDir, $imageName);
            $sigcardFrontPath = $filePath;
            $dprFrontPath = $filePath;
        }

        if ($request->has('dpr_back')) {
            $file = $request->file('dpr_back');
            // $extensions = $file->getClientOriginalExtension();
            // $imageName = Str::random(20) . '.' . $extensions;

            if (array_key_exists($branch_id, $branchLocationMap)) {
                $location_index = $branchLocationMap[$branch_id];
                $location_dir = 'img/uploads/' . $location_Path[$location_index] . '/' . $directoryName . '/';
                $fullLocationDir = public_path($location_dir);

                if (!File::exists($fullLocationDir)) {
                    // Create the directory if it doesn't exist
                    File::makeDirectory($fullLocationDir, 0777, true);
                }
            }

            $extensions = $file->getClientOriginalExtension();
            $imageName = 'DATA PRIVACY' . '-' . 'bck' . '.' . $extensions;
            $width = 800;
            $height = 900;
            resizeImage($file, $width, $height);
            $filePath = $location_dir . $imageName;
            // Move the file to the directory
            $file->move($fullLocationDir, $imageName);
            $dprBackPath = $filePath;
        }

        $dataprivacy = new Dataprivacy();
        $dataprivacy->dpr_front = $dprFrontPath;
        $dataprivacy->dpr_back = $dprBackPath;
        $dataprivacy->custid = $request->customer_id;
        $dataprivacy->save();

        return redirect(route('dashboard'))->with('success', 'Uploaded Successfully');
    }


    }



