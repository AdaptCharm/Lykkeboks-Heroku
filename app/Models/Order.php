<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable = [
        'user_id',
        'status'
    ];

    public $timestamps = [
        'created_at',
        'updated_at'
    ];

    public function user()
    {
        return $this->belongsTo('\App\Models\User');
    }

    public function products()
    {
        return $this->hasMany('\App\Models\OrderDetail', 'order_id', 'id');
    }
}
