<?php

use Illuminate\Database\Eloquent\Model;

class OrderedProductModel extends Model
{
    protected $table = 'ordered_products';
    protected $fillable=['pre_order_id','product_id','quantity','amount'];
}