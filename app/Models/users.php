<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;

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
