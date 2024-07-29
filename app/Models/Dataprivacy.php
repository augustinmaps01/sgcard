<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Dataprivacy extends Model
{
    use HasFactory;
    protected $table = 'sgcard_dprivacy';
    protected $primaryKey = 'dpr_id';
    protected $fillable = [
        'dpr_front',
        'dpr_back',
        'custid'
    ];


    public function customer(): BelongsTo
    {
        return $this->belongsTo(Customer::class);
    }
    // public function images():HasMany {
    //     return $this->belongsTo(Customer::class,'custid');
    // }
}
