<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class WonedProduct extends Model
{
    protected $fillable = [
        'redeem_id',
        'product_id',
        'user_id',
        'status' // 0 - Woned, 1 - Ordered, 2 - Shipped
    ];


    public function product()
    {
        return $this->hasOne('App\Models\Product', 'id', 'product_id');
    }
}

