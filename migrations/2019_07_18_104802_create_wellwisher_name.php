<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWellwisherName extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wellwisher_name', function (Blueprint $table) {
            $table->string('tel');
            $table->string('fname');
            $table->string('lname');
            $table->foreign('tel')->references('tel')->on('wellwishers');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('wellwisher_name');
    }
}
