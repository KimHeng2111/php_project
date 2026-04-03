<?php
namespace App;
require_once __DIR__ . '/../vendor/autoload.php';

class Invoice {
    // Invoice properties and methods
    public function __get(string $name) {
        var_dump($name);
    }
    public function __set(string $name, $value) {
        var_dump($name, $value);
    }
    public function __invoke()
    {
        throw new \Exception('Not implemented');
    }
}