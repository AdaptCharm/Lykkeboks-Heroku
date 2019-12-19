<?php

namespace Tests\Unit;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use \Stripe\Stripe as StripeCore;
use \Stripe\Charge as StripeCharge;

class ExampleTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function test_stripe_package()
    {
        StripeCore::setApiKey('sk_test_SWDHDxcF9Y81guBTCxUb6Tx3');

        // $this->assertTrue(true);
    }
}
