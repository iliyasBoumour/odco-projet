<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ArabicData extends Controller
{
    public static function date($your_date) {
        $months = array("Jan" => "يناير", "Feb" => "فبراير", "Mar" => "مارس", "Apr" => "أبريل", "May" => "ماي", "Jun" => "يونيو", "Jul" => "يوليو", "Aug" => "أغسطس", "Sep" => "سبتمبر", "Oct" => "أكتوبر", "Nov" => "نوفمبر", "Dec" => "ديسمبر");
        $en_month = date('M', strtotime($your_date));
        $day_name = date("D",strtotime($your_date));
        $day = date("d",strtotime($your_date));
        $year= date("Y",strtotime($your_date));
        foreach ($months as $en => $ar) {
            if ($en == $en_month) { $ar_month = $ar; }
        }
    
        $find = array ("Sat", "Sun", "Mon", "Tue", "Wed" , "Thu", "Fri");
        $replace = array ("السبت", "الأحد", "الإثنين", "الثلاثاء", "الأربعاء", "الخميس", "الجمعة");
        
        $ar_day = str_replace($find, $replace, $day_name);
    
       
        $current_date = $year.' - '.$ar_day.' - '.$day.' - '.$ar_month;
        
       // $arabic_date = str_replace($standard , $eastern_arabic_symbols , $current_date);
    
        return $current_date;
    }
}
