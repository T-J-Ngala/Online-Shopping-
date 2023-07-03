<?php

require_once(ROOT_PATH.'/core/controller.php');
require_once(ROOT_PATH.'/models/orderModel.php');
require_once(ROOT_PATH.'/models/preOrderModel.php');
require_once(ROOT_PATH.'/models/orderedProductModel.php');
require_once(ROOT_PATH.'/models/productModel.php');

class  OrderController extends Controller
{
   

    function __construct() {
        $this->model = new OrderModel();
    }


    function viewAll_get() {
        $orders = OrderModel::all();
        $data = Array();
        $products='';
        foreach($orders as $ord)
        {
            $user = UserModel::where('id','=',$ord['user_id'])->first();
            $preOrder= PreOrderModel::where('id','=',$ord['pre_order_id'])->first();
            $ordProducts=OrderedProductModel::where('pre_order_id','=',$ord['pre_order_id'])->get();
            $ord['products']='';
            foreach($ordProducts as $orp)
            {
                $orpName=ProductModel::where('id','=',$orp['product_id'])->first();
                $ord['products'].=strval($orp['quantity']).' '.$orpName['name'].'|';
            }
            $ord['user']=$user['name'].' '.$user['surname'];
            $ord['email']=$user['email'];
            $ord['cell']=$user['cell'];
            $ord['address']=$user['address'];
            $ord['created_at']=$ord['created_at']->format('Y-m-d');
            
        }

        echo json_encode($orders);
    }

    function getById_get($id) {
        $result = $this->model->find($id);
        echo json_encode($result);
    }

    function order_post()
    {
        //echo "Hey there\n";
        $requestBody = file_get_contents('php://input');
        $data = json_decode($requestBody, true);
        //print_r($data);
        $current_datetime = date("Y-m-d H:i:s");

        $preOrder=Array(
            'order_time'=>$current_datetime,
            'order_status_id'=>1
        );

        $pre = PreOrderModel::create($preOrder);

        foreach($data as $dt)
        {
           //print_r($dt);
           $ordered = Array(
            'product_id'=>$dt['id'],
            'pre_order_id'=>$pre->id,
            'quantity'=>$dt['quantity']
           );
           OrderedProductModel::create($ordered);

        }
        $p = Array('pre_order_id'=>$pre->id);
        echo json_encode($p);
       
    }


    public function order($id)
    {
        $data = OrderModel::all();

        if($_SERVER['REQUEST_METHOD']=='POST' and isset($_POST['submit']))
        {
            $order=Array(
                'user_id'=>$_SESSION['user_id'],
                'pre_order_id'=>$id,
                'card_holder'=>$_POST['card_holder'],
                'expiration_date'=>$_POST['expiration_date']
            );
            OrderModel::create($order);
            header('Location: /');
        }

        $this->load_view('home/payment',$data);   
    }

    public function index()
    {
        $data = $this->model->all();
        $this->load_view('order',$data);
    }

}