<?php

namespace App\Livewire\Admin;
use Livewire\Attributes\Layout;
use Livewire\Attributes\Title;
use Livewire\Component;


#[Title("View Logs")]
#[Layout("layouts.app")]
class LogsReport extends Component
{
    public function render()
    {
        return view('livewire.admin.logs-report');
    }
}
