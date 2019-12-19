<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCompleteDatabase extends Migration
{
    public function up()
    {
        ini_set('memory_limit', '-1');
        DB::unprepared(file_get_contents(public_path('database.sql')));
    }
}
