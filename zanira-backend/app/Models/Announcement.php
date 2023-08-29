<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Announcement extends Model
{
    use HasFactory;

    protected $fillable = [
        'foundation_id',
        'title',
        'text',
    ];

    public function foundation(){
        return $this->belongsTo(Foundation::class);
    }

}
