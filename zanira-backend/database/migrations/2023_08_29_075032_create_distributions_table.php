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
        Schema::create('distributions', function (Blueprint $table) {
            $table->id();
            $table->integer('foundation_id');
            $table->string('kategori');
            $table->integer('nominal');
            $table->date('tanggal');
            $table->string('tempat');
            $table->string('bentuk');
            $table->integer('penanggung_jawab_id'); 
            $table->integer('verifikasi_status');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('distributions');
    }
};
