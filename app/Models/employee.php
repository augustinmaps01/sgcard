<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class employee extends Model
{
    // use HasFactory;

    protected $table = 'employee';
    protected $primaryKey = 'uid';
    protected $fillable = [
        'fname',
        'mname',
        'lname',
        'profpic',
        'username',
        'password',
        'userlevel'
    ];
    protected $dateFormat = 'Y-m-d H:i:s:a';


}
