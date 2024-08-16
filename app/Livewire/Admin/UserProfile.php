<?php

namespace App\Livewire\Admin;

use Livewire\Component;
use Livewire\Attributes\Layout;
use Livewire\Attributes\Url;
use Livewire\Attributes\Title;


#[Title('User-profile')]
#[Layout('layouts.app')]
class UserProfile extends Component
{

    #[url]

    public function mount () {

    }

    public function render()
    {
        return view('livewire.admin.user-profile');
    }
}
