<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMemberRegistrar extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('member_registrar', function (Blueprint $table) {
            $table->string('registrar_agentid');
            $table->string('district_name');
            $table->foreign('registrar_agentid')->references('agentid')->on('members');
            $table->foreign('district_name')->references('district_name')->on('agents');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('member_registrar');
    }
}
