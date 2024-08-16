<?php

namespace App\Livewire\Admin;

use Livewire\Attributes\Layout;
use Livewire\Attributes\Url;
use Livewire\Attributes\Title;
use Livewire\Component;
use Livewire\Attributes\Lazy;

#[Lazy]
#[Title('Add New Customer')]
#[Layout('layouts.app')]
class CustomerEntry extends Component
{

    #[url]
    public function render()
    {
        return view('livewire.admin.customer-entry');
    }
}
