<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
    use HasFactory;

    protected $table = 'album';

    public function album_translations()
    {
        return $this->hasMany(AlbumTranslation::class, 'album_id');
    }

    public function translation($locale)
    {
        return $this->album_translations()
            ->where('locale', $locale)
            ->first();
    }
}
