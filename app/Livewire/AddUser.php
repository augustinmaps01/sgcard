<?php

namespace App\Livewire;

use Livewire\Attributes\Layout;
use Livewire\Attributes\Title;
use Livewire\Component;
use App\Models\Roles;
use App\Models\users;
use App\Models\userDetails;
use Illuminate\Support\Facades\Hash;
use Livewire\WithFileUploads;
use Livewire\Attributes\Lazy;
use Livewire\Attributes\Validate;

#[Title('Add User')]
#[Layout('layouts.app')]
#[Lazy]
class AddUser extends Component
{
    use WithFileUploads;
    #[Validate]
    public $firstname;
    public $middlename;
    public $lastname;
    public $suffix;
    public $birthdate;
    public $gender;
    public $civilstat;
    public $phone;
    public $address;
    public $email;
    public $username;
    public $password;
    public $userType;
    public $photo;
    public $userRole;



    public function mount()
    {
        $this->userRole = Roles::all();
    }

    public function updated($field)
    {
        $this->validateOnly($field);
    }
    public function rules() {
        return [
            'firstname' => 'required',
            'lastname' => 'required',
            'email' => 'required|email',
            'username' => 'required',
            'birthdate' => 'required',
            'gender' => 'required',
            'civilstat' => 'required',
            'phone' => 'required',
            'password' => 'required',
            'userType' => 'required',
            'photo' => 'image|max:1024'
        ];
    }
    public function message ()
    {
        return [
            'firstname.required' => 'First name is required.',
            'middlename.required' => 'Middle name is required.',
            'lastname.required' => 'Last name is required.',
            'suffix.required' => 'Suffix is required.',
            'birthdate.required' => 'Birthdate is required.',
            'gender.required' => 'Gender is required.',
            'civilstat.required' => 'Civil status is required.',
            'phone.required' => 'Phone number is required.',
            'email.required' => 'Email is required.',
            'email.email' => 'Invalid email format.',
            'username.required' => 'Username is required.',
            'password.required' => 'Password is required.',
            'userType.required' => 'User role is required.',
        ];
        }

    public function store()
    {
        $this->validate();
        if($this->photo) {
            $file = $this->photo;
            $extensions = $file->getClientOriginalExtension();
            $imageName = time() . '.' .  $extensions;
            $pathFIle = 'img/uploads/users/'.$imageName;
            $file->storeAs(path:'img/uploads/', name: $imageName);
        }
      $userinfo = userDetails::create([
            'first_name' => $this->firstname,
            'middle_name' => $this->middlename,
            'last_name' => $this->lastname,
            'email' => $this->email,
            'civil_status' => $this->civilstat,
            'gender' => $this->gender,
            'mobile_no' => $this->phone,
            'suffix' => $this->suffix,
            'birthdate' => $this->birthdate,
            'address' => $this->address,
            'photo' => $pathFIle  ,
        ]);
        users::create([
           'udid' => $userinfo->id,
           'username' => $this->username,
           'password' => Hash::make($this->password),
           'role_id' => $this->userType,
        ]);
        session()->flash('success', 'User Added Successfully');
        return $this->redirect('/addUser');

    }
    public function removephoto()
    {
        $this->photo = null;
    }

    public function render()
    {
        return view('livewire.add-user');
    }
}
