<?php
require './vendor/autoload.php';
header('Content-Type', 'application/json');

$stripe = new Stripe\StripeClient("sk_test_51LAzNOSEEMCLGkkUfTKnxJ44kwpJIWZxeSLr2Z2O2FxvLB6ORBwGKJAd6UKelOyOlgGFjcV9kBNwupEE9yT1W7R200ltRoCEpo");
$session = $stripe->checkout->sessions->create([
    "success_url" => "http://localhost:8080/paymentSection/success.php",
    "cancel_url" => "http://localhost:8080/paymentSection/cancel.php",
    "payment_method_types" => ['card'],
    "mode" => 'payment',
    "line_items" => [
        [
           "price_data" =>[
               "currency" =>"usd",
               "product_data" =>[
                   "name"=> "Doctor Fees",
                   "description" => "consulation"
               ],
               "unit_amount" => 5000
           ],
           "quantity" => 1 
        ]

    ]
]);

echo json_encode($session);

?>