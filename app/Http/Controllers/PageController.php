<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Message;
use App\Settinggs;
use App\Friende;
use App\Slider;
use App\Goal;
use App\Service;

class PageController extends Controller
{
    public function contact(Request $request)
    {

        $request->validate([
            'message' => 'required',
            'service' => 'required',
            'phone' => 'required',
            'email' => 'required',
            'name' => 'required',

        ]);
            Message::create([
                "message" => "message" ,
                "service" => "service" ,
                "phone"   => "phone" ,
                "email"   => "email" ,
                "name"    => "name" ,]
            );

            return redirect()->back()->with('message', 'done');

    }

    public function index () {
        $data     = Settinggs::get()->first();
        $sliders  = Slider::get();
        $goals    = Goal::get();
        $friends  = Friende::get();
        $services = Service::get();
        return view('welcome',compact('data','sliders','goals','services','friends'));
    }
}
