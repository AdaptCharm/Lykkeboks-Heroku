<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BoxProduct extends Model
{
    protected $fillable = [
        'box_id',
        'product_id',
        'wining_chance'
    ];

    public $timestamps = [
        'created_at',
        'updated_at'
    ];


    public function product()
    {
        return $this->hasOne('App\Models\Product', 'id', 'product_id');
    }
}
