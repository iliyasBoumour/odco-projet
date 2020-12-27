<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ContactUs extends Mailable
{
    use Queueable, SerializesModels;
    public $id;
    public $nom;
    public $mail;
    public $obj;
    public $cont;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($id,$nom,$mail,$obj,$cont)
    {
        $this->id=$id;
         $this->nom=$nom;
         $this->mail=$mail;
         $this->obj=$obj;
         $this->cont=$cont;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from($this->mail)
                    ->markdown('contact.email')
                    ->subject($this->obj);
    }
}
