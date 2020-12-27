<?php

use Illuminate\Database\Seeder;

class TypedocumentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Typedocument::class,4)->create();
    }
}
