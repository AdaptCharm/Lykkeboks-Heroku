<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'name',
        'sell_back_price',
        'delivery_fee',
        'image_path',
        'sizes',
        'colors',
    ];
    public $timestamps = [
        'created_at',
        'updated_at'
    ];

}
