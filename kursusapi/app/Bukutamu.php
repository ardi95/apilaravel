<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Bukutamu extends Model
{
    //
    protected $fillable = ['nama','alamat','jenis_kelamin','notel','foto'];
    use SoftDeletes;
}
