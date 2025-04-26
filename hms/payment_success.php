<?php
session_start();
include('include/config.php'); // Your DB config

$key_id = 'rzp_test_KfTKbgGeTHoTEN'; // Your Razorpay Key ID
$key_secret = 'KTeQwVmCxWFSBIvOfYKEsVeF'; // Your Razorpay Key Secret

if (!empty($_POST['razorpay_payment_id']) && !empty($_POST['appointment_id'])) {
    $payment_id = $_POST['razorpay_payment_id'];
    $appointment_id = intval($_POST['appointment_id']);

    // Verify payment using Razorpay API via cURL
    $url = "https://api.razorpay.com/v1/payments/$payment_id";
    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_USERPWD, $key_id . ":" . $key_secret);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($ch);
    $http_status = curl_getinfo($ch, CURLINFO_HTTP_CODE);
    curl_close($ch);

    // Debug output
    echo "<pre>HTTP Status: $http_status\nResponse: $response</pre>";

    if ($http_status == 200) {
        $payment = json_decode($response, true);
        if ($payment['status'] == 'captured' || $payment['status'] == 'authorized') {
            // Mark appointment as paid
            $query = mysql_query("UPDATE appointment SET payment_status='paid' WHERE id='$appointment_id'");
            if ($query) {
                // Fetch appointment details
                $result = mysql_query("SELECT * FROM appointment WHERE id='$appointment_id'");
                $appointment = mysql_fetch_assoc($result);
                echo "<h2>Payment Successful ✅</h2>";
                echo "<p>Appointment ID: " . $appointment['id'] . "</p>";
                echo "<p>Doctor ID: " . $appointment['doctorId'] . "</p>";
                echo "<p>Date: " . $appointment['appointmentDate'] . "</p>";
                echo "<p>Time: " . $appointment['appointmentTime'] . "</p>";
                echo "<p>You will be redirected to your dashboard shortly...</p>";
                echo "<script>setTimeout(function(){ window.location.href='dashboard.php'; }, 5000);</script>";
                exit();
            } else {
                echo "<h2>Payment was successful but DB update failed ❌</h2>";
                echo "<pre>MySQL Error: " . mysql_error() . "</pre>";
            }
        } else {
            echo "<h2>Payment Failed ❌</h2>";
        }
    } else {
        echo "<h2>Could not verify payment with Razorpay ❌</h2>";
    }
} else {
    echo "<h2>Invalid Access</h2>";
}

echo "Updating appointment ID: $appointment_id";
?>
