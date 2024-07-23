<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Carbon\Carbon;
class Customer extends Model
{
    use HasFactory;
    protected $table = 'sgcard_customer';

    protected $dateFormat = 'Y-m-d';
    protected $primaryKey = 'custid';
    protected $fillable = [
        'custid',
        'client_ID',
        'svngs_accno',
        'amount_opened',
        'fname',
        'mname',
        'lname',
        'amou',
        'suffix',
        'birthdate',
        'address',
        'photo',
        'status',
        'created_at',
        'updated_at',
        'brid'

    ];

    public function getLastUpdateAttribute($value)
    {
        // Assuming $value is in the format 'Y-m-d H:i:s'
        $this->attributes['birthdate'] = Carbon::createFromFormat('m/d/Y', $value)->format('Y-m-d');

    }
    public function dataprivacy(): HasMany
    {
        return $this->hasMany(Dataprivacy::class);
    }
    public function nais(): HasMany
    {
        return $this->hasMany(Nais::class);
    }
    public function Scard(): HasMany
    {
        return $this->hasMany(Sigcard::class);
    }
    public function branch(): HasOne
    {
        return $this->hasOne(Branch::class);
    }

}