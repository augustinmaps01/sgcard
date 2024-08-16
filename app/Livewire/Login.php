<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\Attributes\Layout;
use Illuminate\Support\Facades\Auth;
use Livewire\Attributes\Title;

#[Title('Login - SIGCARD SYSTEM')]
#[Layout('layouts.app')]
class Login extends Component
{
    public $username;
    public $password;

    protected $rules = [
        'username' => 'required|string',
        'password' => 'required|string',
    ];

    public function login() {
        $this->validate();
        if(Auth::attempt(['username' => $this->username, 'password' => $this->password])) {
            $user =  Auth::user();

            if($user->role) {
                switch($user->role->user_type)
                {
                    case 'Admin':
                        return redirect()->route('dashboard');
                    case 'Compliance':
                        return redirect()->route('compliance.dashboard');
                    default:
                        return redirect()->route('login');
                }
            }
        }
        else {
            session()->flash('error','Invalid credintials');
        }
    }
    public function render()
    {
        return view('livewire.login');
    }
}
