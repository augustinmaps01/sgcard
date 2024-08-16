<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
<<<<<<< HEAD
=======
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
>>>>>>> 2789cab52378b3a101bef54dcf2ad1b29401a0c1

class users extends Model
{
    use HasFactory;
    protected $table = 'users';
    protected $primaryKey = 'userid';
    protected $fillable = [
        'userid',
        'udid',
        'username',
        'password',
        'role_id',
        'created_at',
        'updated_at',
    ];

    public function userdetails(): HasOne
    {
        return $this->hasOne(userDetails::class, 'udid');
    }

    public function userRole(): HasOne
    {
        return $this->hasOne(roles::class, 'role_id');
    }
}
