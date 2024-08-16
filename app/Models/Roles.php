<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

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

    public function users() : BelongsTo
    {
        return $this->belongsTo(users::class);
    }


}
