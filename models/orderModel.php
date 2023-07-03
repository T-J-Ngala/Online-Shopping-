<?php

use Illuminate\Database\Eloquent\Model;

class OrderModel extends Model
{
    protected $table = 'orders';
    protected $fillable=['user_id','pre_order_id','card_holder','expiration_date'];
}