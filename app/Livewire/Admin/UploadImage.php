<?php

namespace App\Livewire\Admin;


use Livewire\Attributes\Layout;
use Illuminate\Validation\Rule;
use Livewire\Attributes\Validate;
use Livewire\Attributes\Url;
use Livewire\Attributes\Title;
use Livewire\Component;
use Livewire\WithFileUploads;
use App\Models\Customer;
use App\Models\Dataprivacy;
use App\Models\Nais;
use App\Models\Sigcard;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;
use Livewire\Attributes\Lazy;


use Illuminate\Support\Facades\File;



#[Lazy]
#[Title('Upload')]
#[Layout('layouts.app')]
class UploadImage extends Component

{

    use WithFileUploads;
    #[url]
    public $custid;

    public $card_front;
    public $card_back;
    public $nais_front;
    public $nais_back;
    public $dpr_front;
    public $dpr_back;

    public function mount ()
    {
        $this->custid = Customer::select('custid')->latest()->first();

    }
    public function updated($field){
        $this->validateOnly($field);
    }
    public function rules ()
    {
        return [
            'custid' => 'required',
            'card_front' => 'required',
            'card_back' => 'required',
            'nais_front' => 'required',
            'nais_back' => 'required',
            'dpr_front' => 'required',
            'dpr_back' => 'required'
        ];
    }

    public function message()
    {
        return [
            'card_front.required' => 'Sigcard front image is required.',
            'card_back.required' => 'Sigcard back image is required.',
            'nais_back.required' => 'Nais back image is required.',
            'nais_front.required' => 'Nais front image is required.',
            'dpr_front.required' => 'Dataprivacy front image is required.',
            'dpr_back.required' => 'Dataprivacy back image is required.',

        ];
    }

    public function store()
    {
        $this->validate();

        // // Fetch the latest customer data

        // $customer_data =Customer::select('custid')->latest()->first();

        // $customer = Customer::join('branch', 'sgcard_customer.brid', '=', 'branch.brid')
        //     ->select('sgcard_customer.*', 'branch.*')->latest()->first();

        // // Prepare the directory for storing images
        // $directoryName = "{$customer->lname} {$customer->fname} {$customer->mname}";
        // $branchLocationMap = [
        //     2 => '01 - MAIN', 3 => '02 - JASAAN', 4 => '03 - SALAY',
        //     5 => '04 - CDO', 6 => '05 - MARAMAG', 7 => '06 - GINGOOG BLU',
        //     8 => '07 - CAMIGUIN BLU', 9 => '08 - BUTUAN BLU', 10 => '09 - MANOLO BLU'
        // ];
        // $location_dir = 'img/uploads/' . $branchLocationMap[$customer->brid] . '/' . $directoryName;
        // $fullLocationDir = public_path('storage/' . $location_dir);

        // if (!File::exists($fullLocationDir)) {
        //     File::makeDirectory($fullLocationDir, 0777, true);
        // }

        // // Prepare the image manager
        // $manager = new ImageManager(new Driver());

        // // Handle file uploads and scaling
        // $frontFilename = $this->handleFileUpload($this->card_front, 'SIGCARD', 'front', $location_dir, $manager);
        // $backFilename = $this->handleFileUpload($this->card_back, 'SIGCARD', 'back', $location_dir, $manager);

        // Sigcard::create([
        //     'custid' => $customer_data,
        //     'card_front' => $frontFilename,
        //     'card_back' => $backFilename
        // ]);

        // $frontFilename = $this->handleFileUpload($this->nais_front, 'NAIS', 'front', $location_dir, $manager);
        // $backFilename = $this->handleFileUpload($this->nais_back, 'NAIS', 'back', $location_dir, $manager);

        // Nais::create([
        //     'custid' => $customer_data,
        //     'nais_front' => $frontFilename,
        //     'nais_back' => $backFilename
        // ]);

        // $frontFilename = $this->handleFileUpload($this->dpr_front, 'DATA PRIVACY', 'front', $location_dir, $manager);
        // $backFilename = $this->handleFileUpload($this->dpr_back, 'DATA PRIVACY', 'back', $location_dir, $manager);

        // Dataprivacy::create([
        //     'custid' => $customer_data,
        //     'dpr_front' => $frontFilename,
        //     'dpr_back' => $backFilename
        // ]);
        $customer_data = Customer::latest()->value('custid');
        $customer = Customer::join('branch', 'sgcard_customer.brid', '=', 'branch.brid')
        ->select('sgcard_customer.*', 'branch.*')->latest()->first();
        $directoryName = $customer->lname . ' ' . $customer->fname . ' ' . $customer->mname;
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
            '09 - MANOLO BLU',
        ];
        $branchLocationMap = [
            2 => 0,
            3 => 1,
            4 => 2,
            5 => 3,
            6 => 4,
            7 => 5,
            8 => 6,
            9 => 7,
            10 => 8,
        ];
        $location_index = $branchLocationMap[$branch_id];
        $location_dir = 'img/uploads/' .$location_Path[$location_index]. '/' . $directoryName ;
        $fullLocationDir = public_path('storage/'. $location_dir);
        if (!File::exists($fullLocationDir)) {
            File::makeDirectory($fullLocationDir, 0777, true);
        }
        $frontFilename = null;
        $backFilename = null;
        $manager = new ImageManager(new Driver());

        if($this->card_front)
        {

            $file = $this->card_front;
            $extensions = $file->getClientOriginalExtension(); ; //  400 x 300
            $imageName = 'SIGCARD' . '-' .'front.'. $extensions;
            $frontFilename = $location_dir. '/' . $imageName;

            $image = $manager->read($file);
            $image->scaleDown(width: 900); // 200 x 150
            // scale down to fixed height
            $image->scaleDown(height: 1000);
            $image->save('storage/'.$frontFilename);

        }
        if($this->card_back) {
            $file = $this->card_back;
            $extensions = $file->getClientOriginalExtension();
            $imageName = 'SIGCARD' . '-' . 'back.'.$extensions;
            $backFilename = $location_dir. '/' . $imageName;
            $image = $manager->read($file);
            $image->scaleDown(width: 900); // 200 x 150
            // scale down to fixed height
            $image->scaleDown(height: 1000);
            $image->save('storage/'.$backFilename);
        }
        Sigcard::create([

            'custid' => $customer_data,
            'card_front' => $frontFilename,
            'card_back' => $backFilename
        ]);
        if($this->nais_front)
        {
            $file = $this->nais_front;
            $extensions = $this->nais_front->getClientOriginalExtension();
            $imageName = 'NAIS' . '-' . 'front.'.$extensions;
            $frontFilename = $location_dir .'/' . $imageName;
            $image = $manager->read($file);
            $image->scaleDown(width: 900); // 200 x 150
            // scale down to fixed height
            $image->scaleDown(height: 1000);
            $image->save('storage/'.$frontFilename);

        }
        if($this->nais_back)
        {
            $file = $this->nais_back;
            $extensions = $this->nais_back->getClientOriginalExtension();
            $imageName = 'NAIS' . '-' . 'back.'.$extensions;
            $backFilename = $location_dir. '/'.$imageName;
            $image = $manager->read($file);
            $image->scaleDown(width: 900); // 200 x 150
            // scale down to fixed height
            $image->scaleDown(height: 1000);
            $image->save('storage/'.$backFilename);

        }
        Nais::create([
            'custid' => $customer_data,
            'nais_front' => $frontFilename,
            'nais_back' => $backFilename
        ]);

        if($this->dpr_front)
        {
            $file = $this->dpr_front;
            $extensions = $this->dpr_front->getClientOriginalExtension();
            $imageName = 'DATA PRIVACY'. '-'.'front.'.$extensions;
            $frontFilename = $location_dir. '/'.$imageName;
            $image = $manager->read($file);
            $image->scaleDown(width: 900); // 200 x 150
            // scale down to fixed height
            $image->scaleDown(height: 1000);
            $image->save('storage/'.$frontFilename);

        }
        if($this->dpr_back)
        {
            $file = $this->dpr_back;
            $extensions = $this->dpr_back->getClientOriginalExtension();
            $imageName = 'DATA PRIVACY'. '-'.'back.'.$extensions;
            $backFilename = $location_dir. '/'.$imageName;
            $image = $manager->read($file);
            $image->scaleDown(width: 900); // 200 x 150
            // scale down to fixed height
            $image->scaleDown(height: 1000);
            $image->save('storage/'.$backFilename);
        }
        Dataprivacy::create([
            'custid' => $customer_data,
            'dpr_front' => $frontFilename,
            'dpr_back' => $backFilename
        ]);

        session()->flash('success', 'Uploaded successfully');
        return $this->redirect('/upload');
    }

    private function handleFileUpload($file, $prefix, $side, $location_dir, $manager)
    {
        if ($file) {
            $extension = $file->getClientOriginalExtension();
            $imageName = "{$prefix}-{$side}.{$extension}";
            $filename = "{$location_dir}/{$imageName}";

            $image = $manager->read($file);
            $image->scaleDown(width: 900)->scaleDown(height: 1000);
            $image->save('storage/' . $filename);

            return $filename;
        }

        return null;
    }
    public function render()
    {
        return view('livewire.admin.upload-image');
    }
}
