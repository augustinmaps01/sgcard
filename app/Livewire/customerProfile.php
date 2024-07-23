<?php

namespace App\Livewire;
use Livewire\Component;



class customerProfile extends Component
{

    public $selectCustomerID;
    public $selectfirst;
    public $selectlast;

    protected $listeners = ['customerselected'];

    public function customerSelected($custid, $fname, $lname)
    {
        $this->selectCustomerID = $custid;
        $this->selectfirst = $fname;
        $this->selectlast = $lname;
    }

    public function render() {
        return view('roles.superAdmin.home');
    }
}
