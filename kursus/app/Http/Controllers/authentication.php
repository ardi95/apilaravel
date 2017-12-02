<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class authentication extends Controller
{
    //
    public function index()
    {
    	return view('login');
    }

    public function login(request $request)
    {
    	$data = $request->all();
    	if (Auth::attempt(['email' => $data['email'], 'password' => $data['password']])) {
            // Authentication passed...
            return redirect('dashboard');
            // echo "benar";
        }
        else{
            echo "salah";
        }
    }
}
