## Ebox Laravel Website

#### To serve
`php artisan serve`


#### All amount saves as (cents) 1 = 1 * 100 => 100
Assume user has balance: $100

Its in database: 10000
To get original balance: `->balanceFloat` returns 100.00


To deposit: 
`->deposit(100)` Treats as 1
`->depositFloat(100)` Treats as 100

To pay: 
`->pay(100)` Treats as 1
