const mix = require('laravel-mix');


mix.js('resources/js/app.js', 'public/frontend/js/redeem.js')
    .sass('resources/sass/app.scss', 'public/frontend/css/redeem.css');
