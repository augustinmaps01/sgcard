<?php

namespace App\Livewire\Admin;

use Livewire\Attributes\Layout;
use Livewire\Attributes\Url;
use Livewire\Attributes\Title;
use Livewire\Component;



#[Title('Dashboard')]
#[Layout('layouts.app')]

class Dashboard extends Component
{
    #[url]


    public function render()
    {

        return view('livewire.admin.dashboard');
    }

}
