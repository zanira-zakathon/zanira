<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Foundation extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'address',
        'token',
    ];

    public function users(){
        return $this->hasMany(User::class);
    }

    public function collections(){
        return $this->hasMany(Collection::class);
    }

    public function distributions(){
        return $this->hasMany(Distribution::class);
    }

    public function announcements(){
        return $this->hasMany(Announcement::class);
    }
}
