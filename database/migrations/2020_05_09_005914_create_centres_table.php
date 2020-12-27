<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCentresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('centres', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('delegation');
            $table->string('numero');
            $table->string('adresse');
            $table->unsignedBigInteger('typecentre_id');
            $table->timestamps();
            $table->foreign('typecentre_id')
                ->references('id')->on('typecentres')
                ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('centres');
    }
}
