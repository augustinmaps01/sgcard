<?php

namespace App\Http\Controllers;

use App\Models\Branch;
use App\Models\Customer;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    public function addcustomer()
    {
        return view('users.addcustomer');
    }

    //? super admin section

    public function show() {
        $data = Customer::all();
        return view('roles.superAdmin.customer', compact('data'));

    }
    public function create()
    {
        $branchData = Branch::all();
        return view('roles.superAdmin.newCustomer', compact('branchData'));
    }

    // show sigcard views
    public function sigcardView()
    {
        return view('roles.superAdmin.sigcard');
    }
    // public function show() {

    // }
    public function store(Request $request)
    {

        $request->validate([
            'client_ID' => 'required|unique:sgcard_customer',
            'svngs_accno' => 'required|unique:sgcard_customer',
            'amount_open' => 'required|numeric',
            'fname' => 'required',
            'mname' => 'required',
            'lname' => 'required',
            'birthdate' => 'required',
            'address' => 'required',
            'photo' => 'required|image|mimes:png,jpg,jpeg,gif'

        ]);

        if ($request->has('photo')) {
            $file = $request->file('photo');

            $extensions = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extensions;
            $path = 'img/uploads/customers/';
            $file->move($path, $filename);
        }
        $customer =  new Customer();
        $customer->client_ID = $request->client_ID;
        $customer->svngs_accno = $request->svngs_accno;
        $customer->amount_opened = $request->amount_open;
        $customer->fname = $request->fname;
        $customer->mname = $request->mname;
        $customer->lname = $request->lname;
        $customer->suffix = $request->suffix;
        $customer->birthdate = $request->birthdate;
        $customer->address = $request->address;
        $customer->brid = $request->branch;
        $customer->photo = $path . $filename;
        $customer->save();

        $error = 'An error occured during form processing';
        return redirect()->route('customer.upload.create')->with('success','customer added successfullly');
    }

}
