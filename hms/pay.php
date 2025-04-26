<?php
session_start();
include('include/config.php');

if (!isset($_GET['appointment_id'])) {
    die("Invalid access");
}
$appointment_id = intval($_GET['appointment_id']);

// Fetch appointment details
$result = mysql_query("SELECT consultancyFees FROM appointment WHERE id='$appointment_id'");
$row = mysql_fetch_assoc($result);
if (!$row) {
    die("Appointment not found");
}
$amount = $row['consultancyFees'];
?>
<!DOCTYPE html>
<html>
<head>
    <title>Pay for Appointment</title>
</head>
<body>
    <h2>Pay for your Appointment</h2>
    <p>Amount: ₹<?php echo htmlentities($amount); ?></p>
    <button id="payBtn">Pay Now</button>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <script>
    document.getElementById('payBtn').onclick = function(e){
        var options = {
            "key": "rzp_test_lWiImuf8shZQcQ", // Your Razorpay Key ID
            "amount": "<?php echo $amount * 100; ?>", // Amount in paise
            "currency": "INR",
            "name": "Hospital Appointment",
            "description": "Consultancy Fees",
            "handler": function (response){
                // Send payment_id and appointment_id to server
                var form = document.createElement('form');
                form.method = 'POST';
                form.action = 'payment_success.php';
                form.innerHTML = '<input name="razorpay_payment_id" value="'+response.razorpay_payment_id+'"/>' +
                                 '<input name="appointment_id" value="<?php echo $appointment_id; ?>"/>';
                document.body.appendChild(form);
                form.submit();
            }
        };
        var rzp1 = new Razorpay(options);
        rzp1.open();
        e.preventDefault();
    }
    </script>
</body>
</html>