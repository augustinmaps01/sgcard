<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Sigcard extends Model
{
    use HasFactory;
    protected $table = 'sgcard_card';
    protected $primaryKey = 'sgcrd_id';
    protected $fillable = [
        'sgcrd_id',
        'card_front',
        'card_back',
        'custid'
    ];
    public function customer(): BelongsTo
    {
        return $this->belongsTo(Customer::class);
    }
}
