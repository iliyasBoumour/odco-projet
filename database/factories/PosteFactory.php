<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use App\Poste;
use Faker\Generator as Faker;

$factory->define(Poste::class, function (Faker $faker) {
    return [
        'titre' => 'مكتب تنمية التعاون يشارك في الملتقى الثاني للمقاطعة الذكية',
         'contenue' => 'ويعتبر هذا الملتقى خطوة هامة،تضع التكنولوجيا في خدمة المحافظة على البيئة  والتنمية المستدامة، وهو ما أكد عليه السيد يوسف الحسني مدير مكتب تنمية التعاون  في مداخلته التي لامست الجوانب الايجابية للمجال التعاوني ودوره في تنظيم الأنشطة المدرة للدخل وفقا لمتطلبات التنمية المستدامة وتنظيم الساكنة بإشراكها اقتصاديا واجتماعيا في إطار الاستراتيجة الوطنية  للاقتصاد الاجتماعي باعتبارها رافعة لنمو مندمج',
         'image' => 'postes\May2020\actua3.jpg',
        'typeAssistance' => 'juridique',
        'dateEvenement' => '2020-05-30'

    ];
});
