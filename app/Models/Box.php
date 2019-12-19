<?php

namespace App\Models;

use Bavix\Wallet\Interfaces\Customer;
use Bavix\Wallet\Interfaces\Product;
use Bavix\Wallet\Traits\HasWallet;
use Illuminate\Database\Eloquent\Model;

class Box extends Model implements Product
{
    use HasWallet;

    protected $fillable = [
        'name',
        'image_path',
        'price',
        'is_published'
    ];

    public $timestamps = [
        'created_at',
        'updated_at'
    ];

    public function canBuy(Customer $customer, int $quantity = 1, bool $force = null): bool
    {
        /**
         * If the service can be purchased once, then
         *  return !$customer->paid($this);
         */
        return true;
    }

    public function getAmountProduct(Customer $customer): int
    {
        return $this->price;
    }

    public function getMetaProduct():  ? array
    {
        return [
            'title'       => $this->name,
            'description' => 'Purchase of Product #' . $this->id,
        ];
    }

    public function getUniqueId() : string
    {
        return (string) $this->getKey();
    }


    public function box_products()
    {
        return $this->hasMany('App\Models\BoxProduct');
    }
}
