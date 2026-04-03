<?php 
namespace App;
class Transaction {
    private $id;
    private $amount;
    private $date;
    private $description;

    public function __construct($id, $amount, $date, $description) {
        $this->id = $id;
        $this->amount = $amount;
        $this->date = $date;
        $this->description = $description;
    }
    public function __get($name)
    {
        if (property_exists($this,$name)){
            return $this->$name;
        }else{
            throw new \Exception("Property $name does not exist");
        }
    }
}