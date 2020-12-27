<?php

use App\Typedocument;
use Illuminate\Database\Seeder;

class DocumentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $typedocs=Typedocument::all();
        factory(App\Document::class,10)->make()->each(function($document){
          $document->typedocument_id = 3;
          $document->save();
        });
    }
}