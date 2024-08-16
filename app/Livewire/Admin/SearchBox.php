<?php

namespace App\Livewire\Admin;

use Livewire\Attributes\Url;
use Livewire\Component;
use App\Models\Customer;
use Livewire\Attributes\Lazy;

#[Lazy]
class SearchBox extends Component
{

    #[Url]

    public $search, $isEmpty = '';
    public $results;
    public $selectcustomer;


    public function render()
    {
        if(!is_null($this->search) && strlen($this->search) > 0 )
        {
            $this->results = Customer::where('fname', 'LIKE', '%' .$this->search . '%')
                            ->orWhere('lname', 'LIKE', '%' .$this->search . '%')
                            ->get();
        }
        sleep(2);
        return view('livewire.admin.search-box', [
            'results' => $this->results,
            'isEmpty' =>$this->isEmpty
        ]);
    }
    public function selectCustomer($custid)
    {
        // Perform a database query to select a customer based on the provided customer ID
        $this->selectcustomer = Customer::join('sgcard_card', 'sgcard_customer.custid', '=', 'sgcard_card.custid')
            ->join('branch', 'sgcard_customer.brid', '=', 'branch.brid')
            ->join('sgcard_nais', 'sgcard_customer.custid', '=', 'sgcard_nais.custid')
            ->join('sgcard_dprivacy', 'sgcard_customer.custid', '=', 'sgcard_dprivacy.custid')
            ->select('sgcard_customer.*', 'sgcard_nais.*', 'sgcard_dprivacy.*', 'sgcard_card.*', 'branch.*')
            ->where('sgcard_customer.custid', $custid)
            ->first();
        if($this->selectcustomer)
        {
            $this->results = [];
            $this->search = '';
        }
    }
}
