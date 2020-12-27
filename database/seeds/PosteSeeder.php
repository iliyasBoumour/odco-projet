<?php

use App\Categorie;
use App\Service;
use App\Poste;

use Illuminate\Database\Seeder;

class PosteSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $categories = Categorie::all();
        $services = Service::all();

        factory(Poste::class,5)->make()->each(function($poste) use($categories,$services){
            $poste->categorie_id = $categories->random()->id;
            $poste->service_id = $services->random()->id;
            $poste->save();
          });
    }
}
