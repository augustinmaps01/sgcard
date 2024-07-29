<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Customer;
use Livewire\WithFileUploads;
use Livewire\Attributes\Validate;
use App\Models\Branch;
use Livewire\Attributes\Lazy;

class AddnewCustomer extends Component
{
    use WithFileUploads;
    #[Lazy]
    #[Validate('required')]

    public $client_ID = '';
    public $svngs_accno;
    public $amountOpened;
    public $firstname = '';
    public $middlename;
    public $lastname;
    public $suffix;
    public $birthdate = '';
    public $address;
    public $brname;
    public $selectbrname;
    public $brid;

    #[Validate('image|max:1024')]
    public $photo;

    public function mount ()
    {
        $this->brname = Branch::where('brcode', '!=' , '00')->get();
    }


    protected $messages = [
        'client_ID.required' => 'The Client ID input field is required.',
        'client_ID.min'=> 'The Client ID field must be at least 3 characters.',
        'svngs_accno.required' => 'The Savings Account No. input field is required.',
        'svngs_accno.min'=> 'The Savings Account No. field must be at least 3 characters.',
        'amountOpened.required' => 'The Amount input field is required.',
        'amountOpened.min' => 'The input field must be atleast 3 digit number',
        'firstname.required' => 'The input field is required',
        'lastname.required' => 'The input field is required',
        'suffix.required' => 'The input field is required',
        'address.required'=> 'The address input field is required',
        'brname.required' => 'The branch/BLU input field is required',
        'birthdate.required' => 'The birthdate input field is required.',
        'birthdate.before_or_equal:today' => 'The birthdate is not valid',
        'birthdate.date' => 'The birthdate must be a valid date.',
    ];
    public function updated ($field)
    {

        $this->validateOnly($field,
            $this->formValidation()
        );
    }
    public function save() {

        $this->validate();
        $filename = null;
        if($this->photo) {
           $filename = $this->photo->store(path:'img/uploads/customers');
        }
        Customer::create([
            'client_ID' => $this->client_ID,
            'svngs_accno' => $this->svngs_accno,
            'amount_opened' => $this->amountOpened,
            'fname' => $this->firstname,
            'mname' => $this->middlename,
            'lname' => $this->lastname,
            'suffix' => $this->suffix,
            'birthdate' => $this->birthdate,
            'address' => $this->address,
            'brid' => $this->brid,
            'photo' => $filename ? public_path('storage/'.$filename)  : null,

        ]);

        session()->flash('success', 'Customer added successfully');
        return $this->redirect('/addNew');

    }

   public function formValidation()
   {
    return [
        'client_ID' => 'required|unique:sgcard_customer|min:5',
        'svngs_accno' => 'required|unique:sgcard_customer|min:5',
        'amountOpened' => 'required|min:3',
        'firstname' => 'required',
        'lastname' => 'required',
        'birthdate' => 'required|date|before_or_equal:today',
        'address' => 'required',
        'brname' => 'required',
        'photo' => 'required|max:1024|image|mimes:png,jpg,jpeg,gif'
    ];
   }

    public function resetData()
    {
        $this->reset([
            'client_ID',
            'svngs_accno',
            'amountOpened',
            'firstname',
            'middlename',
            'lastname',
            'suffix',
            'birthdate',
            'address',
            'brname'
        ]);
    }
    public function render()
    {

        return view('livewire.addnew-customer');
    }
    public function selectBranch($brid)
    {
        $this->selectbrname = Branch::find($brid);
    }
}
