<?php


use App\Http\Controllers\CustomerController;
use App\Http\Controllers\roleviewController;
use App\Http\Controllers\SuperAdmin;
use App\Http\Controllers\uploadController;
use App\Livewire\AddUser;
use App\Livewire\Dashboard;
use App\Livewire\CustomerEntry;
use App\Livewire\Login;
use App\Livewire\UploadImage;
use App\Livewire\UserProfile;
use Illuminate\Support\Facades\Route;





// landing page

// Route::get('/', [LoginController::class, 'loginpage']);

// livewire components
Route::get('/login', Login::class)->name('login');

Route::get('/userProfile', UserProfile::class)->name('userProfile');
Route::get('/dashboard', Dashboard::class)->name('dashboard');
Route::get('/addNew', CustomerEntry::class)->name('addnew');
Route::get('/upload', UploadImage::class)->name('upload');
Route::get('/addUser',AddUser::class)->name('adduser');





//? landing page for every user roles
Route::controller(roleviewController::class)->group(function () {

    // Route::get('/search', 'roleviewController@autocomplete')->name('search');
    Route::get('/admindashboard', 'adminView');
    Route::get('/home', 'userView');
});


// superadmin

Route::controller(SuperAdmin::class)->group(function () {
    Route::get('/Customer', 'customerView')->name('customer.shows');
});



Route::controller(CustomerController::class)->group(function () {
    // Route::get('/customerentry', 'addcustomer');
    //* users
    // Route::get('/customer', 'index')->name('customer.index');
    // Route::get('/customernew', 'index')->name('customer.new');
    //? super admin

    // display customer data
    Route::get('/customers', 'show')->name('customers.show');

    // store customer information
    Route::post('/customer/store',  'store')->name('customer.store');

    // customer input form
    Route::get('/customer/create', 'create')->name('customer.create');
    Route::get('/sigcard', 'sigcardView')->name('sigcard.show');

    // Route::get('/sigcardshow','sigcardView')->name('sigcard.show');
    // Route::get('/showcustomer', 'customersView')->name('customer.show');
});



// uploading

Route::controller(uploadController::class)->group(function () {
    //? super admin
    Route::get('/upload/new', [uploadController::class, 'newUpload'])->name('upload.new');
    // Route::get('/customers/{customer}/upload/create','create')->name('customer.upload.create');
    Route::get('/customers/upload/','create')->name('customer.upload.create');
    // Route::post('/customers/{photo}/upload', 'store')->name('customer.upload.store');
    Route::post('/customer/upload/store', 'store')->name('customer.upload.store');
    Route::get('/customer/upload/', 'uploadView')->name('upload.view');


    // Route::post('/storeupload', 'storeupload')->name('store.upload');
});
