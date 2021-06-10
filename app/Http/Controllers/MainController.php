<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class MainController extends Controller
{
    public function checkout($locale = 'id')
    {
        app()->setLocale($locale);
        
        return view('checkout.index');
    }

    public function switch($locale)
    {
        Session::put('locale', $locale);

        return redirect()->back();
    }

    public function album()
    {
        return view('album.index');
    }
}
