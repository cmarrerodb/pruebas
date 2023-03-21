<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('traducciones', function (Blueprint $table) {
            $table->foreign(['id_idioma'], 'idiomas_traducciones_fky')->references(['id'])->on('idiomas');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('traducciones', function (Blueprint $table) {
            $table->dropForeign('idiomas_traducciones_fky');
        });
    }
};
