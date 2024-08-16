<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class userDetails extends Model
{
    use HasFactory;

    protected $table = 'user_details';
    protected $fillable = [
        'id',
        'first_name',
        'middlen_name',
        'last_name',
        'email',
        'civil_status',
        'gender',
        'mobile_no',
        'suffix',
        'birthdate',
        'address',
        'photo',
        'created_at',
        'updated_at',
    ];

    public function user(): BelongsTo
    {
        return $this->belongsTo(users::class);
    }
}
