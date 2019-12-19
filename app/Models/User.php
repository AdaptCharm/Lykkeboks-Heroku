<?php

namespace App\Models;

use Bavix\Wallet\Interfaces\Customer;
use Bavix\Wallet\Models\Wallet;
use Bavix\Wallet\Traits\CanPayFloat;
use Illuminate\Database\Eloquent\Relations\MorphOne;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable implements Customer
{
    use CanPayFloat;
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'image_path',
        'country',
        'city',
        'phone',
        'region',
        'zip_code',
        'address',
    ];

    public $timestamps = [
        'created_at',
        'updated_at',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function getFullAddressAttribute()
    {
        $fullAddress = '';
        if ($this->address != '') {
            $fullAddress .= $this->address . ', ';
        }
        if ($this->region != '') {
            $fullAddress .= $this->region . ', ';
        }
        if ($this->zip_code != '') {
            $fullAddress .= $this->zip_code . ', ';
        }
        if ($this->city != '') {
            $fullAddress .= $this->city . ', ';
        }
        if ($this->country != '') {
            $fullAddress .= $this->country;
        }

        return $fullAddress;
    }
}
