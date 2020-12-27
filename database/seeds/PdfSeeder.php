<?php

use Illuminate\Database\Seeder;

class PdfSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //$documents=App\Document::all();
        $posts = App\Poste::all();
        factory(App\Video::class,5)->make()->each(function($pdf) use($posts){
            $pdf->poste_id=$posts->random()->id;
            $pdf->save();
        });
    }
}