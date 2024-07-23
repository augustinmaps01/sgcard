<?php

namespace App\Http\Controllers;

use App\Models\Sigcard;
use App\Models\Customer;
use Illuminate\Http\Request;

class roleviewController extends Controller
{
    //
        //? super admin section Landing page
        public function superadminView()
        {

            $sigcardData = Customer::join('sgcard_card', 'sgcard_customer.custid', '=', 'sgcard_card.custid')
            ->join('branch', 'sgcard_customer.brid', '=', 'branch.brid')
            ->join('sgcard_nais', 'sgcard_customer.custid', '=', 'sgcard_nais.custid')
            ->join('sgcard_dprivacy', 'sgcard_customer.custid', '=', 'sgcard_dprivacy.custid')
            ->select('sgcard_customer.*', 'sgcard_nais.*', 'sgcard_dprivacy.*', 'sgcard_card.*', 'branch.*')
            ->limit(1)->get();
            return view('roles.superAdmin.home', compact('sigcardData'));
        }
        //? admin section landing page
        public function adminView()
        {
            return view('roles.admin.home');
        }
        //? users section landing page
        public function userView()
        {
            return view('roles.users.home');
        }
}
