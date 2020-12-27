<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Pdfdocument;
use App\Pdfpost;
use App\Video;
use Faker\Generator as Faker;

$factory->define(Video::class, function (Faker $faker) {
    return [
        'titre' => 'كيفية انشاء تعاونية',
        'path' => 'https://youtu.be/vHryRKorzdw'
    ];
});
