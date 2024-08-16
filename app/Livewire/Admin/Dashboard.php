<?php

namespace App\Livewire\Admin;

<<<<<<< HEAD
use Livewire\Component;

class Dashboard extends Component
{
    public function render()
    {
        return view('livewire.admin.dashboard');
    }
=======
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

>>>>>>> 2789cab52378b3a101bef54dcf2ad1b29401a0c1
}
