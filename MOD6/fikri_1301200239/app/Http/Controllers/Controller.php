<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, ValidatesRequests;
    // Fikri Maulana 1301200239
    public function index(){
        return view('content.login.loginUser');
    }

    public function auth(Request $request){
        $credentials = $request->validate([
            'email' => 'required',
            'password' => 'required'
        ]);

        if(Auth::attempt($credentials) || Auth::attempt([
            'email' => $request->email,
            'password' => $request->password
        ])){
            return redirect()->intended('/halaman-user')->with(['succes' => 'Login Succesfull!']);
        } else {
            return back()->with('loginError', 'Wrong email or password!');
        }
    }

    public function register(){
        return view('content.register');
    }
}
