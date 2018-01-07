<?php 
    $ToEmail = 'youremail@mail.com'; 
    $EmailSubject = 'Demo contact form'; 
    $mailheader = "From: ".$_POST["your-email"]."\r\n"; 
    $mailheader .= "Reply-To: ".$_POST["your-email"]."\r\n"; 
    $mailheader .= "Content-type: text/html; charset=iso-8859-1\r\n"; 
    $MESSAGE_BODY = "Name: ".$_POST["your-name"].""."\n";
    $MESSAGE_BODY .= "Email: ".$_POST["your-email"].""."\n"; 
	$MESSAGE_BODY .= "Phone: ".$_POST["your-phone"].""."\n"; 
    $MESSAGE_BODY .= "Message: ".nl2br($_POST["your-message"]).""; 
	$result='';
	if ($_POST['submit']) {
	
		if ((!$_POST['your-email'] || !filter_var($_POST['your-email'], FILTER_VALIDATE_EMAIL)) || (!$_POST['your-name']) || (!$_POST['your-message'])) {
			$result='<div class="alert alert-danger">Sorry there was an error sending your message. Please try again later.</div>';
		}
		else {
			(mail($ToEmail, $EmailSubject, $MESSAGE_BODY, $mailheader));
			$result='<div class="alert alert-success">Thank You! I will be in touch</div>';
		}
	}
?> 
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Contacts | Novatis - Responsive Bootstrap HTML5 Template</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Fav icon -->
    <link rel="shortcut icon" href="images/favicon.png">

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" media="all" href="css/bootstrap.css" />

    <!-- Template CSS Files  -->

    <link rel="stylesheet" type="text/css" media="all" href="css/responsive.css" />
    <link rel="stylesheet" type="text/css" media="all" href="css/prettyPhoto.css" />
    <link rel="stylesheet" type="text/css" media="all" href="css/style.css" />

    <!-- Template JS Files -->
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script> 
    <script type="text/javascript" src="js/modernizr.js"></script>
</head>

<body class="page-template-page-fullwidth">
    <div class="main-holder">
        <!-- Header Section Starts -->
        <header class="header">
            <div class="container">
                <div class="row">
                    <div class="span12">
                        <div class="tail-top">
                            <div class="clearfix">
                                <div class="pull-left">
                                    <div class="contacts">
										<address>1234 Disney Paris, France</address>
										<span class="tel">+41 264 883 030</span>
										<span class="mail">
											<a href="#">novatis@mail.com</a>
										</span>
                                    </div>
                                </div>
                                <div class="pull-right">
                                    <span class="slogan">
										Welcome! Give some information here
									</span>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix">
							<!-- Logo -->
                            <div class="pull-left">
                                <div class="logo pull-left">
                                    <a href="index.html"><img src="images/logo.png" alt="Novatis"></a>
                                </div>
                            </div>
                            <div class="pull-right">
                                <!-- Navbar Starts -->
                                <nav class="nav nav__primary clearfix">
                                    <ul class="sf-menu">
                                        <li class="color-1 icon-home"><a href="index.html">Home</a></li>
                                        <li class="color-2 icon-file-alt"><a href="about.html">About</a>
                                            <ul class="sub-menu">
                                                <li><a href="testimonials.html">Testimonials</a></li>
                                                <li><a href="archives.html">Archives</a></li>
                                                <li><a href="faqs.html">FAQs</a></li>
												<li><a href="404.html">404 Page</a></li>
                                            </ul>
                                        </li>
                                        <li class="color-3 icon-edit"><a href="blog.html">Blog</a></li>
                                        <li class="color-4 icon-th-large"><a href="portfolio-3.html">Projects</a>
                                            <ul class="sub-menu">
                                                <li><a href="portfolio-2.html">Projects 2</a></li>
                                                <li><a href="portfolio-3.html">Projects 3</a></li>
                                                <li><a href="portfolio-4.html">Projects 4</a></li>
                                            </ul>
                                        </li>
                                        <li class="color-5 icon-envelope current-menu-item"><a href="contacts.php">Contacts</a></li>
                                    </ul>
                                </nav>
                                <!-- Navbar Ends -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Header Section Ends -->
        <div class="content-holder clearfix">
            <div class="container">
                <div class="row">
                    <div class="span12">
                        <div class="row">
                            <div class="span12">
                                <section class="title-section">
                                    <h1 class="title-header">Contacts </h1>
                                    <ul class="breadcrumb breadcrumb__t">
                                        <li><a href="index.html">Home</a></li>
                                        <li class="divider">/</li>
                                        <li class="active">Contacts</li>
                                    </ul>
                                </section>
                            </div>
                        </div>
						<!-- Main Content Starts -->
                        <div id="content" class="row">
                            <div class="span12">
                                <div>
                                    <div class="content_box">
                                        <div class="google-map">
											<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6048.438033682013!2d-73.99845878378454!3d40.71319483954188!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+%C3%89tat+de+New+York%2C+%C3%89tats-Unis!5e0!3m2!1sfr!2sfr!4v1429283309416" ></iframe>
                                        </div>
                                        <div class="row-fluid">
											<!-- Contact Info Starts -->
                                            <div class="span4">
                                                <h2>Contact info</h2>
                                                <h5>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</h5>
                                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque la udantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia.
												<br/>
												<address>
													<strong>The Company Name Inc.<br/>
														9870 St Vincent Place,<br/>
														Glasgow, DC 45 Fr 45.
													</strong>
													<br/>
													Telephone: +1 800 603 6035<br/>
													FAX: +1 800 889 9898<br/>
													E-mail: <a href="#"><span>novatis@mail.com</span></a><br/>
												</address> 
											</div>
											<!-- Contact Info Ends -->
											<!-- Contact Form Starts -->
                                            <div id="cf" class="span8">
                                                <h2>Contact form</h2>
                                                <div class="cf">
                                                    <form action="contacts.php#cf" method="post" class="cf-form">
                                                        <div class="row-fluid">
                                                            <p class="span4 field"><span class="cf-form-control-wrap"><input type="text" id="your-name" placeholder="name" name="your-name" value="" size="40" title="Name:"/></span> </p>
                                                            <p class="span4 field"><span class="cf-form-control-wrap"><input type="text" id="your-email" placeholder="email" name="your-email" value="" size="40" title="E-mail:"/></span> </p>
                                                            <p class="span4 field"><span class="cf-form-control-wrap"><input type="text" id="your-phone" placeholder="phone" name="your-phone" value="" size="40" title="Phone:"/></span> </p>
                                                        </div>
                                                        <p class="field"><span class="cf-form-control-wrap"><textarea name="your-message" id="your-message" placeholder="your message" cols="40" rows="10" title="Message:"></textarea></span> </p>
                                                        <p class="submit-wrap">
														<?php echo $result; ?>	
                                                            <input type="reset" value="clear" class="btn btn-primary" />
                                                            <input  id="submit" name="submit" type="submit" value="send" class="cf-form-control  cf-submit btn btn-primary" />
                                                        </p>
                                                    </form>
                                                </div>
                                            </div>
											<!-- Contact Form Ends -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
						<!-- Main Content Ends -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Starts -->
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="span12">
						<!-- Footer Widgets Starts -->
                        <div class="footer-widgets">
                            <div class="row">
								<!-- Footer Widget 1 Starts -->
                                <div class="span3">
                                    <div id="text-2">
                                        <h4 class="footer-widgets_h">About Us</h4>
                                        <div class="textwidget">Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate Proin gravida nibh vel velit auctor aliquet.  Aenean sollicitudin, lorem quis bibendum auctor Aenean sollicitudin lorem.</div>
                                    </div>
                                </div>
								<!-- Footer Widget 1 Ends -->
								<!-- Footer Widget 2 Starts -->
                                <div class="span3">
                                    <div>
                                        <h4 class="footer-widgets_h">Popular Topics</h4>
                                        <div class="tagcloud">
											<a href="#">auctor</a>
                                            <a href="#">lorem</a>
											<a href="#">ipsum</a>
                                            <a href="#">Bibendum</a>
											<a href="#">nibh</a>
											<a href="#">gravida</a>
											<a href="#">aliquet</a>
											<a href="#">quis</a>
											<a href="#">vel</a>
											<a href="#">Proin</a>
											<a href="#">Aenean</a>
											<a href="#">sollicitudin</a>
                                            <a href="#">elit</a>
											<a href="#">consequat</a>
											<a href="#">sagittis</a>
                                            <a href="#">odio</a>
										</div>
                                    </div>
                                </div>
								<!-- Footer Widget 2 Ends -->
								<!-- Footer Widget 3 Starts -->
                                <div class="span3">
                                    <div>
                                        <h4 class="footer-widgets_h">Recent News</h4>
                                        <ul class="post-list unstyled">
                                            <li class="clearfix">
                                                <h4 class="post-list_h"><a class="post-title" href="blog-post-1.html">Duis sed odio sit amet nibh vulputate</a></h4>
                                                <time datetime="2013-03-14T20:28">March 14, 2013</time>
                                                <div class="excerpt">
                                                </div>
                                            </li>
                                            <li class="clearfix">
                                                <h4 class="post-list_h"><a class="post-title" href="blog-post-2.html">Quisque iaculis purus eget metus</a></h4>
                                                <time datetime="2013-03-05T20:31">March 5, 2013</time>
                                                <div class="excerpt">
                                                </div>
                                            </li>
                                            <li class="clearfix">
                                                <h4 class="post-list_h"><a class="post-title" href="blog-post-1.html">Lorem ipsum dolor sit amet</a></h4>
                                                <time datetime="2013-02-14T20:26">February 14, 2013</time>
                                                <div class="excerpt">
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
								<!-- Footer Widget 3 Ends -->
								<!-- Footer Widget 4 Starts -->
                                <div class="span3">
                                    <div>
                                        <h4 class="footer-widgets_h">Flickr Feed</h4>
                                        <ul id="flickr" class="flickr_list unstyled clearfix row-fluid"></ul>
                                        <a href="http://flickr.com/photos/132108856@N03" class="link"></a>
                                    </div>
                                </div>
								<!-- Footer Widget 4 Ends -->
                            </div>
                        </div>
						<!-- Footer Widgets Ends -->
                        <div class="copyright">
                            <div class="row">
                                <div class="span6">
                                    <div id="footer-text" class="footer-text">
                                        <strong>Novatis</strong> - Responsive Bootstrap HTML5 Template Template :: Designed with love &hearts; by
										<a class="orange" target="_blank" href="http://www.themeforest.net/user/celtano">
										Celtano
										</a>
                                    </div>
                                </div>
                                <div class="span6 social-links">
								<span class="text-follow">Follow us :</span> 
									<a href="#"><i class="icon-facebook"></i></a>
									<a href="#"><i class="icon-twitter"></i></a>
									<a href="#"><i class="icon-google-plus"></i></a>
									<a href="#"><i class="icon-pinterest"></i></a>
									<a href="#"><i class="icon-linkedin"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
		<!-- Footer Ends -->
    </div>
    <div id="back-top-wrapper" class="visible-desktop">
        <p id="back-top">
            <a href="index.html#top"><span></span></a>
        </p>
    </div>
	<!-- Template JS Files -->
	<script type="text/javascript" src="js/superfish.js"></script>
    <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="js/jquery.elastislide.js"></script>
    <script type="text/javascript" src="js/jquery.mobilemenu.js"></script>
    <script type="text/javascript" src="js/jflickrfeed.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>

</html>