<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
    protected $fillable = [
        'order_id',
        'product_id',
        'size',
        'color'
    ];

    public $timestamps = [
        'created_at',
        'updated_at'
    ];

    public function product()
    {
        return $this->hasOne('\App\Models\Product', 'id', 'product_id');
    }
}
