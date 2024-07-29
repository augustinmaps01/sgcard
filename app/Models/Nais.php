<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Nais extends Model
{
    use HasFactory;
    protected $table = 'sgcard_nais';
    protected $primaryKey = 'naisid';
    protected $fillable =  [
        'nais_front',
        'nais_back',
        'custid'
    ];
    public function customer(): BelongsTo
    {
        return $this->belongsTo(Customer::class);
    }
}
