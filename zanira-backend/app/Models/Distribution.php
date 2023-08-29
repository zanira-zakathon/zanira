<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Distribution extends Model
{
    use HasFactory;

    protected $fillable = [
        'foundation_id',
        'kategori',
        'nominal',
        'tanggal',
        'tempat',
        'bentuk',
        'penanggung_jawab_id',
        'verifikasi_status'
    ];

    public function foundation(){
        return $this->belongsTo(Foundation::class);
    }
}
