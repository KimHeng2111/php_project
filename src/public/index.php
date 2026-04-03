<?php
require __DIR__ . '/../vendor/autoload.php';

$coffeeMaker = new App\CoffeeMaker();
$coffeeMaker->makeCoffee();
$latteMaker = new App\LatteMaker();
$latteMaker->makeCoffee();
$latteMaker->makeLatte();
$cuppuccinoMaker = new App\CappuccinoMaker();
$cuppuccinoMaker->makeCoffee();
$cuppuccinoMaker->makeCappuccino();
$allInOneMaker = new App\AllInOneCoffeeMaker();
$allInOneMaker->makeCoffee();
$allInOneMaker->makeLatte();
$allInOneMaker->makeCappuccino();
?>