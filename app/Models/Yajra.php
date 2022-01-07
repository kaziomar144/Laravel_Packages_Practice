<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Yajra extends Model
{
    use HasFactory;

    protected $table = "yajras";

    protected $fillable = ['name','email','phone','salary','department'];
}
