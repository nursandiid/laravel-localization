<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class MainController extends Controller
{
    public function checkout()
    {
        if ($locale = session('locale')) {
            app()->setLocale($locale);
        }
        
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
