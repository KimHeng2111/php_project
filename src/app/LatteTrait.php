<?php

namespace App;

trait LatteTrait
{
    public function makeLatte(){
        echo static::class . ' is making Latte'. PHP_EOL;
    }
}
trait CappuccinoTrait{
    public function makeCappuccino(){
        echo __CLASS__ . ' is making Cappuccino'. PHP_EOL;
    }
}