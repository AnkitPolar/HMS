<?php
session_start();
$_SESSION['login'] = "";
session_unset();
$_SESSION['errmsg'] = "You have successfully logout";
// session_destroy(); // Removed to preserve errmsg for redirect
?>
<script language="javascript">
document.location="/hospital/index.php";
</script>
