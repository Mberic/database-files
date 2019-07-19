<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMemberName extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('member_name', function (Blueprint $table) {
            $table->string('email')->primary();
            $table->string('fname');
            $table->string('lname');
            $table->date('date_of_reg');
            $table->string('recommender_id')->nullable();
            $table->char('gender', 1);
            $table->foreign('recommender_id')->references('member_id')->on('members');
            $table->foreign('email')->references('email')->on('member_contact');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('member_name');
    }
}
