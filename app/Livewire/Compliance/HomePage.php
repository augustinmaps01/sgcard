<?php

namespace App\Livewire\Compliance;

use Livewire\Attributes\Layout;
use Livewire\Attributes\Url;
use Livewire\Attributes\Title;
use Livewire\Component;


#[Title("Home -  Compliance")]
#[Layout("layouts.app")]
class HomePage extends Component
{
    #[url]
    public function render()
    {
        return view('livewire.compliance.home-page');
    }
}
