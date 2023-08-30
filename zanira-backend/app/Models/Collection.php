<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Collection extends Model
{
    use HasFactory;

    protected $fillable = [
        'foundation_id',
        'kategori',
        'nominal',
        'tanggal',
        'bentuk',
        'nama_muzakki',
        'no_muzakki',
        'tanggungan',
        'tujuan',
        'penanggung_jawab_id',
    ];

    public function foundation(){
        return $this->belongsTo(Foundation::class);
    }
}
