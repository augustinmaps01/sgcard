<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
<<<<<<< HEAD
use Illuminate\Database\Eloquent\Relations\BelongsTo;
=======
use Illuminate\Database\Eloquent\Relations\HasMany;
>>>>>>> 2789cab52378b3a101bef54dcf2ad1b29401a0c1

class Roles extends Model
{
    use HasFactory;

    protected $table = 'user_role';

    protected $fillable = [
        'id',
        'user_level',
        'role',
        'user_type',
        'created_at',
        'updated_at'
    ];

<<<<<<< HEAD
    public function users() : BelongsTo
    {
        return $this->belongsTo(users::class);
=======
    public function users() : HasMany
    {
        return $this->hasMany(User::class);
>>>>>>> 2789cab52378b3a101bef54dcf2ad1b29401a0c1
    }


}
