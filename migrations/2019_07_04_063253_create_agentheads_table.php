<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAgentheadsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('agentheads', function (Blueprint $table) {
            $table->string('agentheadid')->primary();
            $table->string('dname');
            $table->string('account_number')->unique();
            $table->unsignedInteger('acct_balance')->default(0);
            $table->date('date_of_reg');
            $table->char('signatures',1);
            $table->foreign('dname')->references('dname')->on('districts');
         
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('agentheads');
    }
}
