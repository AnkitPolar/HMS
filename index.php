<!DOCTYPE HTML>
<html>
	<head>
		<title>Hospital Management System</title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='http://fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="css/responsiveslides.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
		<style>
			/* Color blindness filter styles */
			body.colorblind-mode {
				filter: saturate(0.5) hue-rotate(180deg);
			}
			
			.colorblind-toggle {
				background: #fff;
				border: 2px solid #2a7ac2;
				padding: 5px 15px;
				border-radius: 5px;
				color: #2a7ac2;
				cursor: pointer;
				margin-left: 15px;
			}
			
			/* Popup styles */
			.popup-overlay {
				display: none;
				position: fixed;
				top: 0;
				left: 0;
				width: 100%;
				height: 100%;
				background: rgba(0,0,0,0.5);
				z-index: 1000;
			}
			
			.popup-content {
				position: fixed;
				top: 50%;
				left: 50%;
				transform: translate(-50%, -50%);
				background: white;
				padding: 20px;
				border-radius: 5px;
				text-align: center;
				z-index: 1001;
			}
			
			.popup-buttons button {
				margin: 10px;
				padding: 8px 20px;
				border: none;
				border-radius: 5px;
				cursor: pointer;
			}
			
			.popup-buttons .enable-btn {
				background: #2a7ac2;
				color: white;
			}
			
			.popup-buttons .disable-btn {
				background: #gray;
				color: black;
			}
			/* Notification styles */
			.notification {
				position: fixed;
				top: 20px;
				right: -300px;
				background-color: #4CAF50;
				color: white;
				padding: 15px 25px;
				border-radius: 5px;
				box-shadow: 0 2px 5px rgba(0,0,0,0.2);
				transition: right 0.5s ease-in-out;
				z-index: 1000;
			}

			.notification.show {
				right: 20px;
			}
		</style>
		  <script>
		    // You can also use "$(window).load(function() {"
			    $(function () {

			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 600
			      });
			});
		  </script>
	</head>
	<body>
	<?php
		session_start();
		if(isset($_SESSION['errmsg'])) {
			echo "<div class='notification' id='logoutNotification'>".$_SESSION['errmsg']."</div>";
			unset($_SESSION['errmsg']);
		}
		?>

		<!-- Add popup dialog -->
		<div class="popup-overlay" id="colorblindPopup">
			<div class="popup-content">
				<h3>Color Blindness Support</h3>
				<p>Would you like to enable color blindness mode for better visibility?</p>
				<div class="popup-buttons">
					<button class="enable-btn" onclick="enableColorBlindMode()">Yes, enable</button>
					<button class="disable-btn" onclick="closePopup()">No, thanks</button>
				</div>
			</div>
		</div>

		<!--start-wrap-->

			<!--start-header-->
			<div class="header">
				<div class="wrap">
				<!--start-logo-->
				<div class="logo">
					<a href="index.html" style="font-size: 30px;">Hospital Management system</a>
				</div>
				<!--end-logo-->
				<!--start-top-nav-->
				<div class="top-nav">
					<ul>
						<li class="active"><a href="index.html">Home</a></li>
						<li><a href="contact.php">contact</a></li>
						<li><button class="colorblind-toggle" onclick="toggleColorBlindMode()">Color Blind Mode</button></li>
					</ul>
				</div>
				<div class="clear"> </div>
				<!--end-top-nav-->
			</div>
			<!--end-header-->
		</div>
		<div class="clear"> </div>
			<!--start-image-slider---->
					<div class="image-slider">
						<!-- Slideshow 1 -->
					    <ul class="rslides" id="slider1">
					      <li><img src="images/slider-image1.jpg" alt=""></li>
					      <li><img src="images/slider-image2.jpg" alt=""></li>
					      <li><img src="images/slider-image1.jpg" alt=""></li>
					    </ul>
						 <!-- Slideshow 2 -->
					</div>
					<!--End-image-slider---->
		    <div class="clear"> </div>
		    <div class="content-grids">
		    	<div class="wrap">
		    	<div class="section group">


				<div class="listview_1_of_3 images_1_of_3">
					<div class="listimg listimg_1_of_2">
						  <img src="images/grid-img3.png">
					</div>
					<div class="text list_1_of_2">
						  <h3>Patients</h3>
						  <p>Register & Book Appointment</p>
						  <div class="button"><span><a href="hms/user-login.php">Click Here</a></span></div>
				    </div>
				</div>

				<div class="listview_1_of_3 images_1_of_3">
					<div class="listimg listimg_1_of_2">
						  <img src="images/grid-img1.png">
					</div>
					<div class="text list_1_of_2">
						  <h3>Doctors Login</h3>

						  <div class="button"><span><a href="hms/doctor/">Click Here</a></span></div>
					</div>
				</div>


					<div class="listview_1_of_3 images_1_of_3">
					<div class="listimg listimg_1_of_2">
						  <img src="images/grid-img2.png">
					</div>
					<div class="text list_1_of_2">
						  <h3>Admin Login</h3>

						  <div class="button"><span><a href="hms/admin">Click Here</a></span></div>
				     </div>
				</div>
			</div>
		    </div>
		   </div>
		   <div class="wrap">
		   <div class="content-box">
		   <div class="section group">
				<div class="col_1_of_3 span_1_of_3 frist">

				</div>
				<div class="col_1_of_3 span_1_of_3 second">

				</div>
				<div class="col_1_of_3 span_1_of_3 frist">


				</div>
			</div>
		   </div>
		   </div>
		   <div class="clear"> </div>
		   <div class="footer">
		   	 <div class="wrap">
		   	<div class="footer-left">
		   			<ul>
						<li><a href="index.html">Home</a></li>
						<li><a href="contact.php">contact</a></li>
					</ul>
		   	</div>

		   	<div class="clear"> </div>
		   </div>
		   </div>
		<!--end-wrap-->
		<script>
			// Check if user has made a choice before
			function checkColorBlindPreference() {
				const hasChoice = localStorage.getItem('colorblindPreference');
				if (!hasChoice) {
					document.getElementById('colorblindPopup').style.display = 'block';
				}
				
				// Apply saved preference
				if (localStorage.getItem('colorblindMode') === 'enabled') {
					document.body.classList.add('colorblind-mode');
				}
			}
			
			function enableColorBlindMode() {
				document.body.classList.add('colorblind-mode');
				localStorage.setItem('colorblindMode', 'enabled');
				localStorage.setItem('colorblindPreference', 'set');
				closePopup();
			}
			
			function closePopup() {
				document.getElementById('colorblindPopup').style.display = 'none';
				localStorage.setItem('colorblindPreference', 'set');
			}
			
			function toggleColorBlindMode() {
				document.body.classList.toggle('colorblind-mode');
				const isEnabled = document.body.classList.contains('colorblind-mode');
				localStorage.setItem('colorblindMode', isEnabled ? 'enabled' : 'disabled');
			}
			
			// Check preference when page loads
			window.addEventListener('load', checkColorBlindPreference);

			// Add notification script
			document.addEventListener('DOMContentLoaded', function() {
				const notification = document.getElementById('logoutNotification');
				if(notification) {
					setTimeout(function() {
						notification.classList.add('show');
					}, 100);

					setTimeout(function() {
						notification.classList.remove('show');
						setTimeout(function() {
							notification.remove();
						}, 500);
					}, 3000);
				}
			});

		</script>
	</body>
</html>
