<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Document;
use Faker\Generator as Faker;

$factory->define(Document::class, function (Faker $faker) {
    return [
        'title' => 'إعلان عن طلب عروض مفتوح رقم 01/2020 بتاريخ 29 ماي 2020 على الساعة 10:30',
        'date_doc' => $faker->date($format= 'Y-m-d')
    ];
});
