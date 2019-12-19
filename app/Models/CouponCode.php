<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CouponCode extends Model
{
    public $timestamps = [
        'created_at',
        'updated_at'
    ];
//code,	type,	no_of_use, user_id,	valid_from,	valid_to,	created_at,	updated_at
    protected $guarded = ['id'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
