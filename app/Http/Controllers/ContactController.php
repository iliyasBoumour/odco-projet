<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Mail;
use App\Mail\ContactUs;
use App\Contact;
use Illuminate\Http\Request;
use App\Typecentre;

class ContactController extends Controller
{
    

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
              $admin=Typecentre::where('type', 'like', '%admin%')->first()->centres ?? 'null';
              $deleg=Typecentre::where('type','like', '%deleg%')->first()->centres ?? 'null';
          
              
        return view('contact.contact',['admins'=>$admin , 'delegs'=>$deleg]); 
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $msg=contact::create(request()->validate([
            'nom'=>'required',
            'email'=>'required|email|regex:/(.+)@(.+)\.(.+)/i',
            'objet'=>'required',
            'contenue'=>'required'
          ]));
         // dd($msg);
          try {
            Mail::send(new contactUs($msg->id,request('nom'),request('email'),request('objet'),request('contenue')));
          } catch (\Exception $e) {
            //dd($e);
            contact::destroy($msg->id);
            return redirect('/contact')
            ->with(['alerte'=>'alert alert-danger','message'=> 'لم يتم ارسال الرسالة بنجاح']);
          }
          return redirect('/contact')
          ->with(['alerte'=>'alert alert-success','message'=>'تم إرسال الرسالة بنجاح']);
    }

}