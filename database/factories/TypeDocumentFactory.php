<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Typedocument;
use Faker\Generator as Faker;

$factory->define(Typedocument::class, function (Faker $faker) {
    return [
        'type' => $faker->name(),
        'islot' => $faker->boolean()
    ];
});
