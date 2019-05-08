<%@page import="java.sql.ResultSet"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
 <jsp:useBean id="dm" class="Resource_package.DataManipulation" />
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Hire and build society</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="District Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
        
        
        
        <script type="text/javascript">
            
            function SuppliersValidation()
            {
             
        var numeric=/^[0-9]+$/;
	var alpha=/^[a-z A-Z]+$/;
	var beta=/^[a-z A-Z 0-9\.]+$/;
	//var gama=/^[a-x A-Z 0-9\$\#]{8-100}+$/;
	var email=/^[\w\-\.\+]+\@[a-z A-Z 0-9\.\-]+\.[a-z A-Z 0-9]{2,4}$/;
	//var m=document.reg.Gender[0].checked;
	//var f=document.reg.Gender[1].checked;
	
         var name=  document.getElementById("txtfname").value;
         
	if(name.length==0)
	{
		alert("First Name field is required");
		return false;
	}
	else if(!(name.match(alpha)))
        {
            alert("First Name is invalid");
		return false;
		
        }
        
         var lname=  document.getElementById("txtlname").value;
        
	if(lname.length==0)
	{
		alert("Last Name  is required");
		return false;
	}
	else if(!(lname.match(alpha)))
        {
            alert("Last Name is invalid");
		return false;
		
        }
        
        
        
        var address=  document.getElementById("txtaddr").value;
        
	if(address.length==0)
	{
		alert("address is required");
		return false;
	}
        
        
        var fcontact=  document.getElementById("txtcn1").value;
        
	if(fcontact.length==0)
	{
		alert("Contact  is required");
		return false;
	}
	else if(!(fcontact.match(numeric)))
        {
            alert("Contact is invalid");
		return false;
		
        }
        
        
         var scontact=  document.getElementById("txtcn2").value;
        
	if(scontact.length==0)
	{
		alert("Contact  is required");
		return false;
	}
	else if(!(scontact.match(numeric)))
        {
            alert("Contact is invalid");
		return false;
		
        }
        
           var semail=  document.getElementById("txtsemail").value;
        
	if(semail.length==0)
	{
		alert("Email  is required");
		return false;
	}
	else if(!(semail.match(email)))
        {
            alert("Email is invalid");
		return false;
		
        }
        
        
        var susername=  document.getElementById("txtsuname").value;
        
	if(susername.length==0)
	{
		alert("Username  is required");
		return false;
	}
	
         
        
        
        var spassword=  document.getElementById("txtspassword").value;
        
	if(spassword.length==0)
	{
		alert("Password  is required");
		return false;
	}
        else if(spassword.length<8)
	{
		alert("Password  is weak");
		return false;
	}
        
        var scpassword=  document.getElementById("txtscpassword").value;
        
	if(scpassword.length==0)
	{
		alert("Password  is required");
		return false;
	}
        
        
        
        else if(spassword!=scpassword)
            {
            alert("Password  mismatch ");
		return false;
            }
            
            
            }
            
            
            
            function CustomersValidation()
            {
             
        var numeric=/^[0-9]+$/;
	var alpha=/^[a-z A-Z]+$/;
	var beta=/^[a-z A-Z 0-9\.]+$/;
	//var gama=/^[a-x A-Z 0-9\$\#]{8-100}+$/;
	var email=/^[\w\-\.\+]+\@[a-z A-Z 0-9\.\-]+\.[a-z A-Z 0-9]{2,4}$/;
	//var m=document.reg.Gender[0].checked;
	//var f=document.reg.Gender[1].checked;
	
         var name=  document.getElementById("txtcfname").value;
         
	if(name.length==0)
	{
		alert("First Name field is required");
		return false;
	}
	else if(!(name.match(alpha)))
        {
            alert("First name is invalid");
		return false;
		
        }
        
         var lname=  document.getElementById("txtclname").value;
        
	if(lname.length==0)
	{
		alert("Last Name  is required");
		return false;
	}
	else if(!(lname.match(alpha)))
        {
            alert("Last Name is invalid");
		return false;
		
        }
        
        
        
        var address=  document.getElementById("txtcadddr").value;
        
	if(address.length==0)
	{
		alert("address is required");
		return false;
	}
        
        
        var fcontact=  document.getElementById("txtcphn").value;
        
	if(fcontact.length==0)
	{
		alert("Contact  is required");
		return false;
	}
	else if(!(fcontact.match(numeric)))
        {
            alert("Contact is invalid");
		return false;
		
        }
        
        
         
        
           var cemail=  document.getElementById("txtcemail").value;
        
	if(cemail.length==0)
	{
		alert("Email  is required");
		return false;
	}
	else if(!(cemail.match(email)))
        {
            alert("Email is invalid");
		return false;
		
        }
        
        
        var cusername=  document.getElementById("txtcuname").value;
        
	if(cusername.length==0)
	{
		alert("Username  is required");
		return false;
	}
	
         
        
        
        var cpassword=  document.getElementById("txtcpassword").value;
        
	if(cpassword.length==0)
	{
		alert("Password  is required");
		return false;
	}
        else if(cpassword.length<8)
	{
		alert("Password  is weak");
		return false;
	}
        
        var ccpassword=  document.getElementById("txtccpassword").value;
        
	if(ccpassword.length==0)
	{
		alert("Password  is required");
		return false;
	}
        
        
        
        else if(cpassword!=ccpassword)
            {
            alert("Password  mismatch ");
		return false;
            }
            
            
            }
            
            
        </script> 
        
        
        
        
        
        
	<!--// Meta tag Keywords -->

	<!-- Custom-Files -->
	<link rel="stylesheet" href="district-web_Free03-09-2018_876381332/web/css/bootstrap.css">
	<!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="district-web_Free03-09-2018_876381332/web/css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="district-web_Free03-09-2018_876381332/web/css/fontawesome-all.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //Custom-Files -->

	<!-- Web-Fonts -->
	<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	    rel="stylesheet">
	<!-- //Web-Fonts -->
</head>

<body>
	<!-- banner -->
	<div class="bannerbg-w3l">
		<!-- header -->
		<header>
			<div class="header_topw3layouts_bar">
				<div class="container">
					<!-- header-top -->
					<div class="row border-bottom py-lg-4 py-3">
						<div class="col-xl-7 col-lg-6 header_agileits_left">
							<ul>
								<li class="mr-3">
									<i class="fas fa-phone mr-2"></i> 9746217453</li>
								<li>
									<i class="fas fa-envelope mr-2"></i>
									<a href="">sayoojputhiyaramban@gmail.com</a>
								</li>
							</ul>
						</div>
						<div class="col-xl-5 col-lg-6 header_right text-center mt-lg-0 mt-2">
							<div class="row">
								<!-- social icons -->
								<div class="col-4 w3social-icons">
									<ul>
										<li>
											<a href="#" class="rounded-circle">
												<i class="fab fa-facebook-f"></i>
											</a>
										</li>
										<li class="px-2">
											<a href="#" class="rounded-circle">
												<i class="fab fa-google-plus-g"></i>
											</a>
										</li>
										<li>
											<a href="#" class="rounded-circle">
												<i class="fab fa-twitter"></i>
											</a>
										</li>
										<li class="pl-2">
											<a href="#" class="rounded-circle">
												<i class="fab fa-dribbble"></i>
											</a>
										</li>
									</ul>
								</div>
								<!-- //social icons -->
								<div class="col-4 header-loginw3ls text-lg-right text-center">
									<a href="#" class="log" data-toggle="modal" data-target="#exampleModalCenter1">
										<i class="fas fa-user mr-2"></i> Login</a>
								</div>
								<!--<div class="col-4 header-loginw3ls">
									<a href="#" class="log" data-toggle="modal" data-target="#exampleModalCenter2">
										<i class="fas fa-key mr-2"></i> Register</a>
								</div>-->
							</div>
						</div>
					</div>
					<!--// header-top -->

					<!-- navigation -->
					<nav class="navbar navbar-expand-lg navbar-light bg-light">
						<a class="navbar-brand" href="#">HIRE AND BUILD
							<span>Resource Scheduler</span>
						</a>
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
						    aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							  <jsp:include page="header.jsp" />
						</div>
					</nav>
					<!-- //navigation -->
				</div>
			</div>
		</header>
		<!-- //header -->
		<!-- banner text -->
		<div class="banner-text-agile">
			<div class="container">
				<div class="banner-w3lstexts text-white text-center">
					<h1>Perfect Resource Scheduler</h1>
					<h4 class="text-uppercase mt-md-3 mt-2 mb-md-4 mb-3">for your dream</h4>
					<p class="text-white"> A construction without a Resource is just a Wish</p>
					<a href="" class="banner-button btn mt-md-5 mt-4">Know More</a>
				</div>
			</div>
		</div>
		<!-- //banner text -->
	</div>
	<!-- login -->
	<div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header text-center">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="login px-4 mx-auto mw-100">
						<h5 class="text-center mb-4">Login Now</h5>
						<form action="LoginAction" method="post">
							<div class="form-group">
								<label>Username</label>
								<input type="text" class="form-control" name="txtuname" id="txtuname" placeholder="" required="">
							</div>
							<div class="form-group">
								<label class="mb-2">Password</label>
								<input type="password" class="form-control" name="txtpassword" id="txtpassword" placeholder="" required="">
							</div>
							<input type="submit" class="btn btn-primary submit mb-4" value="Login"/>
							<p class="text-center pb-4">
								<a href="ForgotPassword.jsp">Forgot your password?</a>
							</p>
							<p class="text-center pb-4">
								Don't have an account? <br>
								<a href="#" data-toggle="modal" data-target="#exampleModalCenter2">Create Customer Account now</a> <br>
                                                                <a href="#" data-toggle="modal" data-target="#exampleModalCenterSupplier">Create Supplier Account now</a> <br>
							</p>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //login -->
	<!-- register -->
	<div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header text-center">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="login px-4 mx-auto mw-100">
						<h5 class="text-center mb-4">Register Now</h5>
						<form action="CustomerRegisterAction" method="post">
							<div class="form-group">
								<label>First Name</label>
								<input type="text" class="form-control" name="txtcfname" id="txtcfname" placeholder="" required="">
							</div>
							<div class="form-group">
								<label>Last Name</label>
								<input type="text" class="form-control" name="txtclname" id="txtclname" placeholder="" required="">
							</div>
                                                    
                                                      <div class="form-group">
								<label>Address</label>
                                                                <textarea class="form-control" name="txtcadddr" id="txtcadddr" placeholder="" required=""></textarea>
							</div>
                                                    <div class="form-group">
								<label>Contact Number</label>
								<input type="text" class="form-control" name="txtcphn" id="txtcphn" placeholder="" required="">
							</div>
                                                    
                                                    
                                                     <div class="form-group">
								<label>Emailid</label>
								<input type="text" class="form-control" name="txtcemail" id="txtcemail" placeholder="" required="">
							</div>
                                                     <div class="form-group">
								<label>Username</label>
								<input type="text" class="form-control" name="txtcuname" id="txtcuname" placeholder="" required="">
							</div>
                                                    
							<div class="form-group">
								<label class="mb-2">Password(8 characters)</label>
								<input type="password" class="form-control" name="txtcpassword" id="txtcpassword" placeholder="" required="">
							</div>
							<div class="form-group">
								<label>Confirm Password</label>
								<input type="password" class="form-control" name="txtccpassword" id="txtccpassword" placeholder="" required="">
                                                                
                                                                
                                                                
							</div>
                                                      <div class="form-group">
								<label>Place</label>
                                                                <select name="ddlPlace" id="ddlPlace" class="form-control">
                                                       <%         
                                                           String s="select * from place_tb  ";
            ResultSet rs=dm.ForSelect(s);
          
                    while(rs.next())
                    {
                        
                        %>
                        
                        <option value="<%= rs.getString(2) %>"><%= rs.getString(2) %></option>
                        
                        <%
                        }
                    %>
                        
                        
                                                                
                                                                
                                                                
								
                                                                    
                                                                </select>
							<input type="submit" class="btn btn-primary submit mb-4" value="Register" onclick=" return CustomersValidation();"  />
                                                    <input type="reset" name="res" class="btn btn-primary submit mb-4" value="Reset">
							<!--<p class="text-center pb-4">
								<a href="#">By clicking Register, I agree to your terms</a>
							</p>-->
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
        </div>
        
        <div class="modal fade" id="exampleModalCenterSupplier" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header text-center">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="login px-4 mx-auto mw-100">
						<h5 class="text-center mb-4">Be a supplier now</h5>
                                                <form action="SupplierRegisterAction" method="post"  enctype="multipart/form-data"> 
							<div class="form-group">
								<label>First Name</label>
								<input type="text" class="form-control" name="txtfname" id="txtfname" placeholder="" required="">
							</div>
							<div class="form-group">
								<label>Last Name</label>
								<input type="text" class="form-control" name="txtlname" id="txtlname" placeholder="" required="">
							</div>
                                                    <div class="form-group">
								<label>Address</label>
                                                                <textarea class="form-control" name="txtaddr" id="txtaddr" placeholder="" required=""></textarea>
							</div>
                                                    <div class="form-group">
								<label>Contact Number :</label>
								<input type="text" class="form-control" name="txtcn1" id="txtcn1" placeholder="" required="">
                                                                <input type="text" class="form-control" name="txtcn2" id="txtcn2" placeholder="" required="">
							</div>
                                                       <div class="form-group">
								<label>Emailid</label>
								<input type="text" class="form-control" name="txtsemail" id="txtsemail" placeholder="" required="">
							</div>
                                                     <!--<div class="form-group">
								<label>Type of User</label>
								<select class="form-control" name="ddlType" id="ddlType">
                                                                    <option value="01">WholeSale Supplier</option>
                                                                    <option value="02">Driver</option>
                                                                </select>
                                                                
							</div>-->
                                                    
                                                  <div class="form-group">
								<label class="mb-2">Username</label>
								<input type="text" class="form-control" name="txtsuname" id="txtsuname" placeholder="" required="">
							</div>
							<div class="form-group">
								<label class="mb-2">Password (8 characters)</label>
								<input type="password" class="form-control" name="txtspassword" id="txtspassword" placeholder="" required="">
							</div>
                                                    <% String pswrd1 = request.getParameter("txtspassword"); %>	
							<div class="form-group">
								<label>Confirm Password</label>
								<input type="password" class="form-control" name="txtscpassword" id="txtscpassword" placeholder="" required="">
							</div>
                                                        <% String pswrd2 = request.getParameter("txtscpassword"); %>	
                                                    <div class="form-group">
								<label>Place</label>
                                                                <select name="ddlPlace" id="ddlPlace" class="form-control">
                                                       <%         
                                                           String splace="select * from place_tb  ";
            ResultSet rsplace=dm.ForSelect(splace);
          
                    while(rsplace.next())
                    {
                        
                        %>
                        
                        <option value="<%= rsplace.getString(2) %>"><%= rsplace.getString(2) %></option>
                        
                        <%
                        }
                    %>
                        
                        
                                                                
                                                                
                                                                
								
                                                                    
                                                                </select>
							</div>
                        <div class="form-group">
								<label class="mb-2">Google Map Location</label>
								<input type="text" class="form-control" name="txtmaplocation" id="txtmaplocation" placeholder="" required="">
							</div>
                    
                    
                                                    <div class="form-group">
								<label>Upload Proof: <br>  License of Supplier </label>
								<input type="file" class="form-control" name="file" id="file"  required="">
							</div>
							<input type="submit" class="btn btn-primary submit mb-4" value="Register" onclick=" return SuppliersValidation();"  />
                                                    <input type="reset" name="res" class="btn btn-primary submit mb-4" value="Reset">
                                                        <% 
if (pswrd1!=null && pswrd2!=null) {	 
  if (!pswrd1.equals(pswrd2)) { 
%>
     <%@ include file="errorpage.html" %>
<%
  } else {
%>
     <jsp:forward page="SupplierRegisterAction" />
<%
  }
} 
%>
                                                        
                                                        
							<!--<p class="text-center pb-4">
								<a href="#">By clicking Register, I agree to your terms</a>
							</p>-->
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--//register-->
	<!-- //banner -->

	<!-- banner-bottom -->
	<div class="serach-w3agile py-5">
		<div class="container py-xl-4 py-lg-3">
			<h3 class="title-w3ls mb-md-5 mb-4 font-weight-bold text-center"></h3>
			
		</div>
	</div>
	<!-- //banner-bottom -->

	<!-- middle section -->
	<div class="middle-w3l">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-6 col-md-4 button">

				</div>
				<div class="col-lg-6 col-md-8 left-build-wthree py-5 px-sm-5 px-4">
					<div class="py-xl-5 py-lg-3 px-xl-4">
						<h4>Construction Resource For Rent</h4>
						<h6 class="mt-3 mb-xl-5 mb-4"> Most Modern Resources</h6>
						<p>It has an extensive list of industrial-type tools and equipment for sale or rent.</p>
						<ul class="list-beach mt-lg-5 mt-4">
							<li>
								<div class="row">
									<div class="col-1 text-center">
										<i class="fas fa-hand-point-right"></i>
									</div>
									<div class="col-10">
										<p> Offers an extensive inventory and premier customer service</p>
									</div>
								</div>
							</li>
							<li class="my-3">
								<div class="row">
									<div class="col-1 text-center">
										<i class="fas fa-hand-point-right"></i>
									</div>
									<div class="col-10">
										<p> Supply our customers with great equipment to get the job done right the first time.</p>
									</div>
								</div>
							</li>
							<li>
								<div class="row">
									<div class="col-1 text-center">
										<i class="fas fa-hand-point-right"></i>
									</div>
									<div class="col-10">
										<p>We pride ourselves on consistently contributing to our customers success by providing them with the right solutions for their needs.</p>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //middle section -->

	<!-- services -->
	<div class="what-w3ls py-5" id="services">
		<div class="container py-xl-5 py-lg-3">
			<div class="text-center mb-md-5 mb-4">
				<h3 class="tittle mb-sm-2">Our Services</h3>
				<p>Some words about our property services</p>
			</div>
			<div class="what-grids">
				<div class="row">
					<div class="col-md-6 what-grid1">
						<div class="row what-top">
							<div class="col-2 what-left">
								<i class="fas fa-key"></i>
							</div>
							<div class="col-10 what-right">
								<h4>Renting Service</h4>
								<p class="mt-2"></p>
							</div>
						</div>
						<div class="row what-top my-md-5 my-4">
							<div class="col-2 what-left">
								<i class="far fa-money-bill-alt"></i>
							</div>
							<div class="col-10 what-right">
								<h4>Saling Service</h4>
								<p class="mt-2"></p>
							</div>
						</div>
						<div class="row what-top">
							<div class="col-2 what-left">
								<i class="fas fa-user-secret"></i>
							</div>
							<div class="col-10 what-right">
								<h4>Non Stop Security</h4>
								<p class="mt-2"></p>
							</div>
						</div>
					</div>
					<div class="col-md-6 what-grid1 my-md-0 my-4">
						<div class="row what-top">
							<div class="col-2 what-left">
								<i class="far fa-building"></i>
							</div>
							<div class="col-10 what-right">
								<h4>Property Management</h4>
								<p class="mt-2"></p>
							</div>
						</div>
						<div class="row what-top my-md-5 my-4">
							<div class="col-2 what-left">
								<i class="fas fa-clipboard-list"></i>
							</div>
							<div class="col-10 what-right">
								<h4>Property Listing</h4>
								<p class="mt-2"></p>
							</div>
						</div>
						<div class="row what-top">
							<div class="col-2 what-left">
								<i class="fas fa-wrench"></i>
							</div>
							<div class="col-10 what-right">
								<h4>Most Modern Equipments</h4>
								<p class="mt-2"></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //services -->

	<!-- pricing -->
	<section class="pricing py-5" id="pricings">
		<div class="container py-xl-5 py-lg-3">
			<div class="text-center mb-lg-5 mb-4">
				<h3 class="tittle mb-2 text-white"></h3>
				<p class="test-title-paara"></p>
			</div>
			<div class="inner-sec">
				<div class="card-deck text-center row mt-5">
					<div class="price-info-grid col-lg-4">
						
					</div>
					<div class="price-info-grid col-lg-4 my-lg-0 my-3">
						
					</div>
					<div class="price-info-grid col-lg-4">
						
					</div>
                                    
                                    <div class="price-info-grid col-lg-4">
						<div class="price-inner">
							<div class="price-header">
								<h4></h4>
							</div>
							<div class="price-body">
								<h5 class="pricing-title">
									<span class="dolor"></span>
									<label>Features</label>

								</h5>
								<ul class="list-unstyled mt-3 mb-4">
									<li class="py-2 border-bottom">Renting</li>
									<li class="py-2 border-bottom">Property Listing</li>
									<li class="py-2 border-bottom">Property Management</li>
									<li class="py-2 border-bottom">Most Modern Equipments</li>
									<li class="py-2">-</li>
								</ul>
								
							</div>
						</div>
					</div>
                                    
				</div>
			</div>
		</div>
	</section>
	<!-- //pricing -->

	<!-- stats section -->
	
	<!-- //stats -->

	<!-- testimonials -->
	
	<!-- //testimonials -->

	<!-- footer top -->
	<div class="footer-top py-5 text-center">
		<div class="container py-xl-5 py-lg-3">
			<h2 class="text-white mb-4">For Your Dream Property</h2>
			<h5 class="text-white mb-sm-5 mb-4 pb-sm-5 pb-4">Contact Us</h5>
			<i class="fas fa-map-marker-alt"></i>
		</div>
	</div>
	<!-- //footer top -->

	<!-- footer -->
	<div class="footer py-5 text-center">
		<div class="container py-xl-5 py-lg-3">
			<div class="address row mb-4">
				<div class="col-lg-4 address-grid">
					<div class="row address-info">
						<div class="col-md-3 address-left text-center">
							<i class="far fa-envelope"></i>
						</div>
						<div class="col-md-9 address-right text-left">
							<h6 class="ad-info text-uppercase mb-2">Email</h6>
							<p>
								<a href="mailto:example@email.com"> mail 1@example.com</a>
							</p>
							<p>
								<a href="mailto:example@email.com"> mail 2@example.com</a>
							</p>
						</div>

					</div>
				</div>
				<div class="col-lg-4 address-grid my-lg-0 my-4">
					<div class="row address-info">
						<div class="col-md-3 address-left text-center">
							<i class="fas fa-mobile-alt"></i>
						</div>
						<div class="col-md-9 address-right text-left">
							<h6 class="ad-info text-uppercase mb-2">call us</h6>
							<p>+1 234 567 8901</p>
							<p>+1 567 567 9876</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 address-grid">
					<div class="row address-info">
						<div class="col-md-3 address-left text-center">
							<i class="far fa-map"></i>
						</div>
						<div class="col-md-9 address-right text-left">
							<h6 class="ad-info text-uppercase mb-2">Address</h6>
							<p> 786 Main Road, hollies</p>
							<p> California, USA</p>
						</div>
					</div>
				</div>
			</div>
			<!-- social icons footer -->
			<div class="w3social-icons-footer text-center pt-sm-5 pt-3">
				<ul>
					<li>
						<a href="#" class="rounded-circle">
							<i class="fab fa-facebook-f"></i>
						</a>
					</li>
					<li class="px-2">
						<a href="#" class="rounded-circle">
							<i class="fab fa-google-plus-g"></i>
						</a>
					</li>
					<li>
						<a href="#" class="rounded-circle">
							<i class="fab fa-twitter"></i>
						</a>
					</li>
					<li class="px-2">
						<a href="#" class="rounded-circle">
							<i class="fab fa-dribbble"></i>
						</a>
					</li>
					<li>
						<a href="#" class="rounded-circle">
							<i class="fab fa-linkedin-in"></i>
						</a>
					</li>
					<li class="px-2">
						<a href="#" class="rounded-circle">
							<i class="fab fa-behance"></i>
						</a>
					</li>
					<li class="">
						<a href="#" class="rounded-circle">
							<i class="fab fa-vimeo-v"></i>
						</a>
					</li>
				</ul>
			</div>
			<!-- //social icons footer -->
		</div>
	</div>
	<!-- footer -->

	<!-- copyright -->
	<div class="copy_right py-4 text-center">
		<p class="text-white"> 2019 Resource Scheduler
	</div>
	<!-- //copyright -->


	<!-- Js files -->
	<!-- JavaScript -->
	<script src="district-web_Free03-09-2018_876381332/web/js/jquery-2.2.3.min.js"></script>
	<!-- Default-JavaScript-File -->
	<script src="district-web_Free03-09-2018_876381332/web/js/bootstrap.js"></script>
	<!-- Necessary-JavaScript-File-For-Bootstrap -->

	<!-- flexSlider (for testimonials) -->
	<link rel="stylesheet" href="district-web_Free03-09-2018_876381332/web/css/flexslider.css" type="text/css" media="screen" property="" />
	<script defer src="district-web_Free03-09-2018_876381332/web/js/jquery.flexslider.js"></script>
	<script>
		$(window).load(function () {
			$('.flexslider').flexslider({
				animation: "slide",
				start: function (slider) {
					$('body').removeClass('loading');
				}
			});
		});
	</script>
	<!-- //flexSlider (for testimonials) -->

	<!-- stats -->
	<script src="district-web_Free03-09-2018_876381332/web/js/jquery.waypoints.min.js"></script>
	<script src="district-web_Free03-09-2018_876381332/web/js/jquery.countup.js"></script>
	<script>
		$('.counter').countUp();
	</script>
	<!-- //stats -->

	<!-- password-script -->
	<script>
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->

	<!-- smooth scrolling -->
	<script src="district-web_Free03-09-2018_876381332/web/js/SmoothScroll.min.js"></script>
	<!-- //smooth scrolling -->

	<!-- move-top -->
	<script src="district-web_Free03-09-2018_876381332/web/js/move-top.js"></script>
	<!-- easing -->
	<script src="district-web_Free03-09-2018_876381332/web/js/easing.js"></script>
	<!--  necessary snippets for few javascript files -->
	<script src="district-web_Free03-09-2018_876381332/web/js/district.js"></script>

	<script src="district-web_Free03-09-2018_876381332/web/js/bootstrap.js"></script>
	<!-- Necessary-JavaScript-File-For-Bootstrap -->
	<!-- //Js files -->

</body>

</html>