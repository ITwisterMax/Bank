<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\UserInformation;

class WelcomeController extends Controller
{
    public function index(){
        $users = UserInformation::all()->sortBy('last_name');
        $result = array();
        $i = 0;
        foreach ($users as $user) {
            $result[$i] = array(
                'id' => $user->id,
                'first_name' => $user->first_name,
                'last_name' => $user->last_name,
                'father_name' => $user->father_name
            );

            $i++;
        }

        return view('welcome')->with([
            'users' => $result,
        ]);
    }
}
