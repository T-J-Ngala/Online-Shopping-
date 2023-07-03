<?php

use Illuminate\Database\Eloquent\Model;

class PreOrderModel extends Model
{
    protected $table = 'pre_order';
    protected $fillable=['order_time','order_status_id','amount'];
}