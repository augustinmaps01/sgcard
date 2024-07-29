<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\Attributes\Layout;
use Livewire\Attributes\Url;
use Livewire\Attributes\Title;

#[Title('Login - SIGCARD SYSTEM')]
#[Layout('layouts.app')]
class Login extends Component
{
    public function render()
    {
        return view('livewire.login');
    }
}
