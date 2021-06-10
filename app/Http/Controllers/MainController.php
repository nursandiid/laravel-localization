<?php

namespace App\Http\Controllers;

use App\Models\Album;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class MainController extends Controller
{
    public function checkout()
    {
        $langcode = explode('.', parse_url(request()->url(), PHP_URL_HOST))[0];
        $available_languages = ['id', 'en'];

        if (in_array($langcode, $available_languages)) {
            app()->setLocale($langcode);
        }
        
        return view('checkout.index');
    }

    public function switch($locale)
    {
        Session::put('locale', $locale);

        return redirect()->back();
    }

    public function album($locale = 'id')
    {
        $album = Album::with('album_translations')->get();

        return view('album.index', compact('album', 'locale'));
    }
}
