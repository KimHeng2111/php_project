<?php
namespace App;
require_once __DIR__ . '/../vendor/autoload.php';

class CoffeeMaker
{
    
    public function makeCoffee(){
        echo static::class . ' is making Coffee'. PHP_EOL;
    }
}