<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ItemsMigration extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('items', function (Blueprint $table) {
            $table->increments('serie');
			$table->string('modelo');
			$table->integer('precio');
            $table->integer('oferta');
			$table->integer('valoracion');
			$table->string('claves');
            $table->string('img');
            
            $table->integer('fabric_id')->unsigned();
            
            $table->foreign('fabric_id')->references('id')->on('fabrics');
            
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
        Schema::dropIfExists('items');
    }
}
