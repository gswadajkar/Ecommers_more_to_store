<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>More To Store</title>
<!-- Bootstrap CSS -->
<link rel='stylesheet'
	href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css'>
<!-- Font Awesome CSS -->
<link rel='stylesheet'
	href='https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>
<!-- jQuery -->
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<!-- Bootstrap JS -->
<script
	src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js'></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<spring:url value='/css/customer.css'/>"
	type="text/css" />
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript"
	src="<spring:url value='/js/frontProduct.js'/>"></script>
<script
	src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script>
<script
	src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script>
<script
	src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script>
<meta charset='UTF-8'>
<meta name="robots" content="noindex">
<link rel="shortcut icon" type="image/x-icon"
	href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />
<link rel="mask-icon" type=""
	href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg"
	color="#111" />
<link rel="canonical"
	href="https://codepen.io/dylanhobbs/pen/kXRVwr?depth=everything&order=popularity&page=55&q=product&show_forks=false" />


<style class="cp-pen-styles">
@import
	url(https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,700)
	;

body {
	padding: 0;
	margin: 0;
	background-color: white;
	font-size: 16px;
	text-rendering: optimizeLegibility;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	-moz-font-feature-settings: "liga" on;
}

.description {
	padding: 1em;
}

h3 {
	font-family: 'Lato';
	color: white;
	letter-spacing: 0.08rem;
	font-weight: 700;
}

h3 span {
	font-weight: 900;
}

.description p {
	margin-top: -0.75em;
	font-size: 0.85em;
	color: white;
	font-weight: 300;
	width: 22vw;
}

p {
	font-family: 'Roboto Condensed', sans-serif;
	font-weight: 700;
}

.card-container {
	z-index: 1;
	margin: 0 auto;
	width: 100%;
}

.object {
	position: relative;
	border-radius: 2%;
	margin: 12vh auto;
	width: 50%;
	height: 50vh;
	background-color: #ff0; /* Old browsers */
	background-image: -moz-linear-gradient(-45deg, #f96217 0%, #f2092a 100%);
	/* FF3.6-15 */
	background-image: -webkit-linear-gradient(-45deg, #f96217 0%, #f2092a 100%);
	/* Chrome10-25,Safari5.1-6 */
	background-image: linear-gradient(135deg, rgba(249, 98, 23, 0.75) 0%,
		rgba(249, 23, 23, 1) 100%);
	/* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
	background-blend-mode: multiply;
	transition: all 1s;
}

.object.expanded {
	background-color: #F91717;
	width: 90%;
}

.object .product.transition {
	transform: matrix(0.8, 0, 0, 0.8, 300, -220);
	will-change: transform;
	transition: all 1s ease-in-out;
}

.object .logo {
	width: 6vw;
	padding-top: 0.5em;
	padding-left: 1.5em;
}

.object .logo img {
	max-width: 100%;
}

.object .product {
	z-index: 10;
	position: absolute;
	width: 34vw;
	margin-left: -12vw;
	margin-top: 1vh;
	transition: all 1s ease-in-out;
}

.object .product img {
	max-width: 100%;
}

.hero p.title {
	position: absolute;
	font-size: 3em;
	top: 10.4%;
	font-size: 12em;
	z-index: 1;
	opacity: 0.12;
	transition: all 1s;
}

.button {
	z-index: 2;
	position: absolute;
	top: 55vh;
	left: 23vw;
	padding-top: 0.95em;
	padding-bottom: 0.75em;
	white-space: nowrap;
	background-image:
		url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/477444/shopping-white.svg');
	background-repeat: no-repeat;
	background-size: 45%;
	background-position: center;
	background-color: rgb(0, 194, 235);
	height: 1.7em;
	width: 3.5em;
	border-radius: 50%;
	box-shadow: 0 1px 3px rgba(0, 194, 235, 0.12), 0 1px 2px
		rgba(0, 194, 235, 0.24);
	transition: all 0.5s;
}

.button:hover {
	box-shadow: 0 3px 6px rgba(0, 194, 235, 0.16), 0 3px 6px
		rgba(0, 194, 235, 0.23);
}

.button.expanded {
	width: 8em;
	height: 1.5em;
	left: 37vw;
	border-radius: 5px;
	text-align: center;
	padding-top: 0.95em;
	padding-bottom: 0.75em;
	transition: all 0.5s;
	background-image: none;
}

.button span {
	display: none;
	opacity: 0;
	white-space: nowrap;
}

.button.expanded span {
	display: initial;
	opacity: 1;
	color: white;
	font-family: 'Lato';
	font-weight: 600;
}

.button.expanded .bold {
	font-weight: 900;
}
</style>
</head>
<body >
	<%@include file="./customer_navigation.jsp"%>

	<section class="mb-4" style="background-color: white;" >

		<h2 class="h1-responsive font-weight-bold text-center my-4">Contact
			us</h2>
		
		<p class="text-center w-responsive mx-auto mb-5">Do you have any
			questions? Please do not hesitate to contact us directly. Our team
			will come back to you within a matter of hours to help you.</p>

		<div style="border: 2px solid black; margin: 10px; background-color:white; padding:30px " class="row">
			<div class="col-lg-9">
				<form id="contact-form" name="contact-form" action="mail.php"
					method="POST">
					<div class="row">
						<div class="col-md-6">
							<div class="md-form">
								<label for="name" class="">Your name</label> <input type="text"
									id="name" name="name" class="form-control">
							</div>
						</div>

						<div class="col-md-6">
							<div class="md-form mb-0">
								<label for="email" class="">Your email</label> <input
									type="text" id="email" name="email" class="form-control">
							</div>
						</div>

					</div>
					<br>
					<div class="row">
						<div class="col-md-12">
							<div class="md-form mb-0">
								<input type="text" id="subject" name="subject"
									class="form-control"> <label for="subject" class="">Subject</label>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="md-form">
								<textarea type="text" id="message" name="message" rows="2"
									class="form-control md-textarea"></textarea>
								<label for="message">Your message</label>
							</div>
						</div>
					</div>

				</form>

				<div class="text-center text-md-left">
					<a class="btn btn-primary"
						onclick="document.getElementById('contact-form').submit();">Send</a>
				</div>
				<div class="status"></div>
			</div>
			<hr>
			<div class="col-md-3 text-center">
				<ul class="list-unstyled mb-0">
					<li><i class="fas fa-map-marker-alt fa-2x"></i>
						<p>Sector No. 29, Behind Akurdi Railway Station, Pradhikaran
							Nigdi, Akurdi, Pune 411044, Pune.</p></li>

					<li><i class="fas fa-phone"></i>
						<p>912027659509</p></li>

					<li><i class="fas fa-envelope"></i>
						<p>iacsd@gmail.com</p></li>
				</ul>
			</div>
			<hr>

		</div>

		<div class="container">
			<div class="col">
				<div class="gmap_canvas">
					<iframe width="100%" height="300px" id="gmap_canvas"
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3780.4047612538147!2d73.75566071420603!3d18.645824170199514!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2b9f04635518b%3A0xea525f504f61f2a4!2sIACSD%20(Institute%20for%20Advanced%20Computing%20and%20Software%20Development)!5e0!3m2!1sen!2sin!4v1616688603201!5m2!1sen!"
						frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
				</div>
			</div>
	</section>
	<!--Section: Contact v.2-->
	<%@include file="customer/footer.jsp"%>
</body>
</html>
