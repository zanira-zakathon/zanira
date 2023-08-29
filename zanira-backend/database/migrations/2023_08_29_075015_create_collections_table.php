<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('collections', function (Blueprint $table) {
            $table->id();
            $table->integer('foundation_id');
            $table->string('kategori');
            $table->integer('nominal');
            $table->date('tanggal');
            $table->string('bentuk');
            $table->string('nama_muzakki'); 
            $table->string('no_muzakki');
            $table->integer('tanggungan');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('collections');
    }
};
