<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAgentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('agents', function (Blueprint $table) {
            $table->string('agentid')->primary();
            $table->string('district_name');
            $table->string('account_number')->unique();
            $table->unsignedInteger('acct_balance')->default(0);
            $table->date('date_of_reg');
            $table->char('signatures',1);
            $table->foreign('district_name')->references('dname')->on('districts');
         
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('agents');
    }
}
