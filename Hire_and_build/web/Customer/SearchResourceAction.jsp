<%-- 
    Document   : ViewSuppliers
    Created on : Apr 8, 2019, 10:20:44 AM
    Author     : Integos
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="Resource_package.DataManipulation" id="dm" />
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Resource Scheduler</title>
	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Grocery Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--//tags -->
	<link href="../online_shoppy/web/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../online_shoppy/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../online_shoppy/web/css/font-awesome.css" rel="stylesheet">
	<!--pop-up-box-->
	<link href="../online_shoppy/web/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!--//pop-up-box-->
	<!-- price range -->
	<link rel="stylesheet" type="text/css" href="../online_shoppy/web/css/jquery-ui1.css">
	<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
	<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	    rel='stylesheet' type='text/css'>
</head>

<body>
	<!-- top-header -->
	<div class="header-most-top">
		<p></p>
	</div>
	<!-- //top-header -->
	<!-- header-bot-->
	<div class="header-bot">
		<div class="header-bot_inner_wthreeinfo_header_mid">
			<!-- header-bot-->
			<div class="col-md-4 logo_agile">
				<h1>
					<a href="">
						<span>C</span>onstruction
						<span>R</span>source 
                                                <span>S</span>cheduler
						
					</a>
				</h1>
			</div>
			<!-- header-bot -->
			<div class="col-md-8 header">
				<!-- header lists -->
				
				<!-- //header lists -->
				<!-- search -->
				<div class="agileits_search">
					<form action="#" method="post">
						<input name="Search" type="search" placeholder="How can we help you today?" required="">
						<button type="submit" class="btn btn-default" aria-label="Left Align">
							<span class="fa fa-search" aria-hidden="true"> </span>
						</button>
					</form>
				</div>
				<!-- //search -->
				<!-- cart details -->
				<div class="top_nav_right">
					<div class="wthreecartaits wthreecartaits2 cart cart box_1">
						<form action="#" method="post" class="last">
							<input type="hidden" name="cmd" value="_cart">
							<input type="hidden" name="display" value="1">
							
						</form>
					</div>
				</div>
				<!-- //cart details -->
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- shop locator (popup) -->
	<!-- Button trigger modal(shop-locator) -->
	<div id="small-dialog1" class="mfp-hide">
		<div class="select-city">
			<h3>Please Select Your Location</h3>
			<select class="list_of_cities">
				<optgroup label="Popular Cities">
					<option selected style="display:none;color:#eee;">Select City</option>
					<option>Birmingham</option>
					<option>Anchorage</option>
					<option>Phoenix</option>
					<option>Little Rock</option>
					<option>Los Angeles</option>
					<option>Denver</option>
					<option>Bridgeport</option>
					<option>Wilmington</option>
					<option>Jacksonville</option>
					<option>Atlanta</option>
					<option>Honolulu</option>
					<option>Boise</option>
					<option>Chicago</option>
					<option>Indianapolis</option>
				</optgroup>
				<optgroup label="Alabama">
					<option>Birmingham</option>
					<option>Montgomery</option>
					<option>Mobile</option>
					<option>Huntsville</option>
					<option>Tuscaloosa</option>
				</optgroup>
				<optgroup label="Alaska">
					<option>Anchorage</option>
					<option>Fairbanks</option>
					<option>Juneau</option>
					<option>Sitka</option>
					<option>Ketchikan</option>
				</optgroup>
				<optgroup label="Arizona">
					<option>Phoenix</option>
					<option>Tucson</option>
					<option>Mesa</option>
					<option>Chandler</option>
					<option>Glendale</option>
				</optgroup>
				<optgroup label="Arkansas">
					<option>Little Rock</option>
					<option>Fort Smith</option>
					<option>Fayetteville</option>
					<option>Springdale</option>
					<option>Jonesboro</option>
				</optgroup>
				<optgroup label="California">
					<option>Los Angeles</option>
					<option>San Diego</option>
					<option>San Jose</option>
					<option>San Francisco</option>
					<option>Fresno</option>
				</optgroup>
				<optgroup label="Colorado">
					<option>Denver</option>
					<option>Colorado</option>
					<option>Aurora</option>
					<option>Fort Collins</option>
					<option>Lakewood</option>
				</optgroup>
				<optgroup label="Connecticut">
					<option>Bridgeport</option>
					<option>New Haven</option>
					<option>Hartford</option>
					<option>Stamford</option>
					<option>Waterbury</option>
				</optgroup>
				<optgroup label="Delaware">
					<option>Wilmington</option>
					<option>Dover</option>
					<option>Newark</option>
					<option>Bear</option>
					<option>Middletown</option>
				</optgroup>
				<optgroup label="Florida">
					<option>Jacksonville</option>
					<option>Miami</option>
					<option>Tampa</option>
					<option>St. Petersburg</option>
					<option>Orlando</option>
				</optgroup>
				<optgroup label="Georgia">
					<option>Atlanta</option>
					<option>Augusta</option>
					<option>Columbus</option>
					<option>Savannah</option>
					<option>Athens</option>
				</optgroup>
				<optgroup label="Hawaii">
					<option>Honolulu</option>
					<option>Pearl City</option>
					<option>Hilo</option>
					<option>Kailua</option>
					<option>Waipahu</option>
				</optgroup>
				<optgroup label="Idaho">
					<option>Boise</option>
					<option>Nampa</option>
					<option>Meridian</option>
					<option>Idaho Falls</option>
					<option>Pocatello</option>
				</optgroup>
				<optgroup label="Illinois">
					<option>Chicago</option>
					<option>Aurora</option>
					<option>Rockford</option>
					<option>Joliet</option>
					<option>Naperville</option>
				</optgroup>
				<optgroup label="Indiana">
					<option>Indianapolis</option>
					<option>Fort Wayne</option>
					<option>Evansville</option>
					<option>South Bend</option>
					<option>Hammond</option>														       
				</optgroup>
				<optgroup label="Iowa">
					<option>Des Moines</option>
					<option>Cedar Rapids</option>
					<option>Davenport</option>
					<option>Sioux City</option>
					<option>Waterloo</option>       													
				</optgroup>
				<optgroup label="Kansas">
					<option>Wichita</option>
					<option>Overland Park</option>
					<option>Kansas City</option>
					<option>Topeka</option>
					<option>Olathe  </option>            													
				</optgroup>
				<optgroup label="Kentucky">
					<option>Louisville</option>
					<option>Lexington</option>
					<option>Bowling Green</option>
					<option>Owensboro</option>
					<option>Covington</option>        														
				</optgroup>
				<optgroup label="Louisiana">
					<option>New Orleans</option>
					<option>Baton Rouge</option>
					<option>Shreveport</option>
					<option>Metairie</option>
					<option>Lafayette</option>          														
				</optgroup>
				<optgroup label="Maine">
					<option>Portland</option>
					<option>Lewiston</option>
					<option>Bangor</option>
					<option>South Portland</option>
					<option>Auburn</option>         														
				</optgroup>
				<optgroup label="Maryland">
					<option>Baltimore</option>
					<option>Frederick</option>
					<option>Rockville</option>
					<option>Gaithersburg</option>
					<option>Bowie</option>         														
				</optgroup>
				<optgroup label="Massachusetts">
					<option>Boston</option>
					<option>Worcester</option>
					<option>Springfield</option>
					<option>Lowell</option>
					<option>Cambridge</option>  
				</optgroup>
				<optgroup label="Michigan">
					<option>Detroit</option>
					<option>Grand Rapids</option>
					<option>Warren</option>
					<option>Sterling Heights</option>
					<option>Lansing</option> 
				</optgroup>
				<optgroup label="Minnesota">
					<option>Minneapolis</option>
					<option>St. Paul</option>
					<option>Rochester</option>
					<option>Duluth</option>
					<option>Bloomington</option>      														
				</optgroup>
				<optgroup label="Mississippi">
					<option>Jackson</option>
					<option>Gulfport</option>
					<option>Southaven</option>
					<option>Hattiesburg</option>
					<option>Biloxi</option>         														
				</optgroup>
				<optgroup label="Missouri">
					<option>Kansas City</option>
					<option>St. Louis</option>
					<option>Springfield</option>
					<option>Independence</option>
					<option>Columbia</option>            														
				</optgroup>
				<optgroup label="Montana">
					<option>Billings</option>
					<option>Missoula</option>
					<option>Great Falls</option>
					<option>Bozeman</option>
					<option>Butte-Silver Bow</option>         														
				</optgroup>
				<optgroup label="Nebraska">
					<option>Omaha</option>
					<option>Lincoln</option>
					<option>Bellevue</option>
					<option>Grand Island</option>
					<option>Kearney</option>        													
				</optgroup>
				<optgroup label="Nevada">
					<option>Las Vegas</option>
					<option>Henderson</option>
					<option>North Las Vegas</option>
					<option>Reno</option>
					<option>Sunrise Manor</option>            													
				</optgroup>
				<optgroup label="New Hampshire">
					<option>Manchesters</option>
					<option>Nashua</option>
					<option>Concord</option>
					<option>Dover</option>
					<option>Rochester</option>              													
				</optgroup>
				<optgroup label="New Jersey">
					<option>Newark</option>
					<option>Jersey City</option>
					<option>Paterson</option>
					<option>Elizabeth</option>
					<option>Edison</option> 
				</optgroup>
				<optgroup label="New Mexico">
					<option>Albuquerque</option>
					<option>Las Cruces</option>
					<option>Rio Rancho</option>
					<option>Santa Fe</option>
					<option>Roswell</option>       
				</optgroup>
				<optgroup label="New York">
					<option>New York</option>
					<option>Buffalo</option>
					<option>Rochester</option>
					<option>Yonkers</option>
					<option>Syracuse</option>        														
				</optgroup>
				<optgroup label="North Carolina">
					<option>Charlotte</option>
					<option>Raleigh</option>
					<option>Greensboro</option>
					<option>Winston-Salem</option>
					<option>Durham</option>          														
				</optgroup>
				<optgroup label="North Dakota">
					<option>Fargo</option>
					<option>Bismarck</option>
					<option>Grand Forks</option>
					<option>Minot</option>
					<option>West Fargo</option>
				</optgroup>
				<optgroup label="Ohio">
					<option>Columbus</option>
					<option>Cleveland</option>
					<option>Cincinnati</option>
					<option>Toledo</option>
					<option>Akron</option>      
				</optgroup>
				<optgroup label="Oklahoma">
					<option>Oklahoma City</option>
					<option>Tulsa</option>
					<option>Norman</option>
					<option>Broken Arrow</option>
					<option>Lawton</option>        														
				</optgroup>
				<optgroup label="Oregon">
					<option>Portland</option>
					<option>Eugene</option>
					<option>Salem</option>
					<option>Gresham</option>
					<option>Hillsboro</option>          														
				</optgroup>
				<optgroup label="Pennsylvania">
					<option>Philadelphia</option>
					<option>Pittsburgh</option>
					<option>Allentown</option>
					<option>Erie</option>
					<option>Reading</option>         														
				</optgroup>
				<optgroup label="Rhode Island">
					<option>Providence</option>
					<option>Warwick</option>
					<option>Cranston</option>
					<option>Pawtucket</option>
					<option>East Providence</option>   
				</optgroup>
				<optgroup label="South Carolina">
					<option>Columbia</option>
					<option>Charleston</option>
					<option>North Charleston</option>
					<option>Mount Pleasant</option>
					<option>Rock Hill</option> 
				</optgroup>
				<optgroup label="South Dakota">
					<option>Sioux Falls</option>
					<option>Rapid City</option>
					<option>Aberdeen</option>
					<option>Brookings</option>
					<option>Watertown</option> 
				</optgroup>
				<optgroup label="Tennessee">
					<option>Memphis</option>
					<option>Nashville</option>
					<option>Knoxville</option>
					<option>Chattanooga</option>
					<option>Clarksville</option>       
				</optgroup>
				<optgroup label="Texas">
					<option>Houston</option>
					<option>San Antonio</option>
					<option>Dallas</option>
					<option>Austin</option>
					<option>Fort Worth</option>   
				</optgroup>
				<optgroup label="Utah">
					<option>Salt Lake City</option>
					<option>West Valley City</option>
					<option>Provo</option>
					<option>West Jordan</option>
					<option>Orem</option>   
				</optgroup>	
				<optgroup label="Vermont">
					<option>Burlington</option>
					<option>Essex</option>
					<option>South Burlington</option>
					<option>Colchester</option>
					<option>Rutland</option>   
				</optgroup>
				<optgroup label="Virginia">
					<option>Virginia Beach</option>
					<option>Norfolk</option>
					<option>Chesapeake</option>
					<option>Arlington</option>
					<option>Richmond</option> 
				</optgroup>	
				<optgroup label="Washington">
					<option>Seattle</option>
					<option>Spokane</option>
					<option>Tacoma</option>
					<option>Vancouver</option>
					<option>Bellevue</option> 
				</optgroup>	
				<optgroup label="West Virginia">
					<option>Charleston</option>
					<option>Huntington</option>
					<option>Parkersburg</option>
					<option>Morgantown</option>
					<option>Wheeling</option> 
				</optgroup>	
				<optgroup label="Wisconsin">
					<option>Milwaukee</option>
					<option>Madison</option>
					<option>Green Bay</option>
					<option>Kenosha</option>
					<option>Racine</option>
				</optgroup>
				<optgroup label="Wyoming">
					<option>Cheyenne</option>
					<option>Casper</option>
					<option>Laramie</option>
					<option>Gillette</option>
					<option>Rock Springs</option>
				</optgroup>
			</select>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //shop locator (popup) -->
	<!-- signin Model -->
	<!-- Modal1 -->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="main-mailposi">
						<span class="fa fa-envelope-o" aria-hidden="true"></span>
					</div>
					<div class="modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">Sign In </h3>
						<p>
							Sign In now, Let's start your Grocery Shopping. Don't have an account?
							<a href="#" data-toggle="modal" data-target="#myModal2">
								Sign Up Now</a>
						</p>
						<form action="#" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" placeholder="User Name" name="Name" required="">
							</div>
							<div class="styled-input">
								<input type="password" placeholder="Password" name="password" required="">
							</div>
							<input type="submit" value="Sign In">
						</form>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal1 -->
	<!-- //signin Model -->
	<!-- signup Model -->
	<!-- Modal2 -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="main-mailposi">
						<span class="fa fa-envelope-o" aria-hidden="true"></span>
					</div>
					<div class="modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">Sign Up</h3>
						<p>
							Come join the Grocery Shoppy! Let's set up your Account.
						</p>
						<form action="#" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" placeholder="Name" name="Name" required="">
							</div>
							<div class="styled-input">
								<input type="email" placeholder="E-mail" name="Email" required="">
							</div>
							<div class="styled-input">
								<input type="password" placeholder="Password" name="password" required="">
							</div>
							<div class="styled-input">
								<input type="password" placeholder="Confirm Password" name="Confirm Password" required="">
							</div>
							<input type="submit" value="Sign Up">
						</form>
						<p>
							<a href="#">By clicking register, I agree to your terms</a>
						</p>
					</div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal2 -->
	<!-- //signup Model -->
	<!-- //header-bot -->
	<!-- navigation -->
	<div class="ban-top">
		<div class="container">
			<div class="agileits-navi_search">
				
			</div>
			<div class="top_nav_left">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
							    aria-expanded="false">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
                                                <jsp:include page="header_Customer_Shoppy.jsp" />
					</div>
				</nav>
			</div>
		</div>
	</div>
	<!-- //navigation -->
	<!-- banner-2 -->
	<div class="page-head_agile_info_w3l">

	</div>
	<!-- //banner-2 -->
	<!-- page -->
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li>
						<a href="">Home</a>
						<i>|</i>
					</li>
					<li>Construction Resource</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
	<!-- top Products -->
	<div class="ads-grid">
		<div class="container">
			<!-- tittle heading -->
			<h3 class="tittle-w3l">All Suppliers
				<span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
			</h3>
			<!-- //tittle heading -->
			<!-- product left -->
			<div class="side-bar col-md-3">
				<div class="search-hotel">
					<h3 class="agileits-sear-head">Search Here..</h3>
					<form action="#" method="post">
						<input type="search" placeholder="Product name..." name="search" required="">
						<input type="submit" value=" ">
					</form>
				</div>
				<!-- price range -->
				
				<!-- //price range -->
				<!-- food preference -->
				
				<!-- //food preference -->
				<!-- discounts -->
				<div class="left-side">
					<h3 class="agileits-sear-head">Discount</h3>
					<ul>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">5% or More</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">10% or More</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">20% or More</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">30% or More</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">50% or More</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">60% or More</span>
						</li>
					</ul>
				</div>
				<!-- //discounts -->
				<!-- reviews -->
				<div class="customer-rev left-side">
					<h3 class="agileits-sear-head">Customer Review</h3>
					<ul>
						<li>
							<a href="#">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<span>5.0</span>
							</a>
						</li>
						<li>
							<a href="#">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star-o" aria-hidden="true"></i>
								<span>4.0</span>
							</a>
						</li>
						<li>
							<a href="#">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star-half-o" aria-hidden="true"></i>
								<i class="fa fa-star-o" aria-hidden="true"></i>
								<span>3.5</span>
							</a>
						</li>
						<li>
							<a href="#">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star-o" aria-hidden="true"></i>
								<i class="fa fa-star-o" aria-hidden="true"></i>
								<span>3.0</span>
							</a>
						</li>
						<li>
							<a href="#">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star-half-o" aria-hidden="true"></i>
								<i class="fa fa-star-o" aria-hidden="true"></i>
								<i class="fa fa-star-o" aria-hidden="true"></i>
								<span>2.5</span>
							</a>
						</li>
					</ul>
				</div>
				<!-- //reviews -->
				<!-- cuisine -->
				
				<!-- //cuisine -->
				<!-- deals -->
				
				<!-- //deals -->
			</div>
			<!-- //product left -->
			<!-- product right -->
			<div class="agileinfo-ads-display col-md-9 w3l-rightpro">
				<div class="wrapper">
					<!-- first section -->
                                        
                                       
                                         <%
                                             int premium=0,p=0;
                                             System.out.print("yss");
                                             String supplier_id="";
                                             int total=0;
                                             String Resourceid="",map_location="";
                                             //out.print("Resourceid"+Resourceid);
                                             
                                              int days= 0;
                                              int required_qty=0;
                                             //out.print("Quantity"+Quantity);                                              
                                              
                                              //String sqlCustomerPlace="select place from customer_tb where customer_id='"+session.getAttribute("id")+"'";
                                              //ResultSet rsCustomerPlace=dm.ForSelect(sqlCustomerPlace);
                                              //if(rsCustomerPlace.next())
                                              //{
                                                  // out.println("reached if place");
                                                      
                                                  ////String sqlMinDist="select destination,source from distance_tb where (source='" + rsCustomerPlace.getString(1)+ "' or destination='" + rsCustomerPlace.getString(1)+ "' )and distance in (select min(distance) from distance_tb where (source='" + rsCustomerPlace.getString(1)+ "' or destination='" + rsCustomerPlace.getString(1)+ "' ))";
                                                 // String sqlMinDist="select destination from distance_tb where (source='" + rsCustomerPlace.getString(1)+ "' )order by distance asc";
                                                                                                    
                                                  //ResultSet rsDist=dm.ForSelect(sqlMinDist);
                                                  //while(rsDist.next())
                                                  //{
                                                     // out.println(rsDist.getString(1)); 
                                                      //........................
                                                  
                                                  
                                              
                                                  //}
                                              
                                             //String sqlRequirements="select * from resourcerequirement_tb where customer_id='"+session.getAttribute("id")+"'" ;
                                              String sqlRequirements="select * from resourcerequirement_tb where customer_id='"+session.getAttribute("id")+"' and requirement_id='"+request.getParameter("reqid")+"'" ;
                                             ResultSet rsRequirements=dm.ForSelect(sqlRequirements);
                                              if(rsRequirements.next())
                                             {
                                                 //rsRequirements.beforeFirst();
                                             //while(rsRequirements.next())
                                             {
                                              Resourceid=rsRequirements.getString(2);
                                              days=rsRequirements.getInt(4);
                                              required_qty=rsRequirements.getInt(3);
                                            String sql="select * from add_supplier_resource_tb where resource_id='"+rsRequirements.getString(2)+"' order by amount asc ";//and quantity<='"+Quantity+"' (qty no need)
                                            ResultSet rs=dm.ForSelect(sql);
                                            while(rs.next())
                                            {
                                                  //System.out.print("yss in wh");
                                                supplier_id=rs.getString("supplier_id");
                                                //out.print("supplier_id"+supplier_id);
                                                
                                                
                                                String sqlSupplier="select * from supplier_tb where supplier_id='"+supplier_id+"'  ";//and place='"+rsDist.getString(1)+"'
                                            ResultSet rsSupplier=dm.ForSelect(sqlSupplier);
                                            if(rsSupplier.next())
                                            {
                                               // supplier_id=rs.getString("supplier_id");
                                                map_location=rsSupplier.getString("maplocation");
                                                
                                                 String sqlDays="select * from add_supplier_resource_tb where resource_id='"+Resourceid+"' and supplier_id= '"+supplier_id+"'";//and quantity<='"+Quantity+"' (qty no need)
                                            ResultSet rsDays=dm.ForSelect(sqlDays);
                                            if(rsDays.next())
                                            {
                                                
                                                total=(rsDays.getInt("amount")*days)*(required_qty);
                                                
                                                //For Premium Customer
                                               String sqlPremium="select count(order_id) from resourceorder_tb where supplier_id= '"+supplier_id+"' and customer_id='"+session.getAttribute("id")+"' and  status='Returned'";//and quantity<='"+Quantity+"' (qty no need)
                                            ResultSet rsPremium=dm.ForSelect(sqlPremium);
                                            if(rsPremium.next())
                                            {
                                                int count=rsPremium.getInt(1);
                                                if( (count>=2) && (count<=10))
                                                {
                                                    p=1;
                                                    premium=20;
                                                total=total-premium;
                                                }
                                                
                                               else  if( (count>10) && (count<=20))
                                                {
                                                    p=1;
                                                     premium=30;
                                                total=total-premium;
                                                }
                                               else   if( (count>21))
                                                {
                                                    p=1;
                                                    premium=50;
                                                total=total-premium;
                                                }
                                            }
                                                
                                                
                                            } 
                                                
                                                
                                            %>
                                        
                                        
                                        
                                        
                                        
					<div class="product-sec1">
						<div class="col-xs-4 product-men">
                                                    
                                                    
                                                    
                                                    
                                                    
							<div class="men-pro-item simpleCart_shelfItem">
								<!--<div class="men-thumb-item">
									<img src="images/a1.jpg" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single2.html" class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>
								</div>-->
                                                                
                                                                
								<div class="item-info-product ">
									<h4>
                                                                            <label>	<a href="single2.html"> <%=rsSupplier.getString(2)%></a></label>
									</h4>
									<div class="info-product-price">
                                                                           
                                                                            
                                                                                  
                                                                            
                                                                            
                                                                            
                                                                           <i class="fa fa-refresh" aria-hidden="true"></i> Contact:<br>
										<span class="item_price"  style="font-family:verdana" ><%=rsSupplier.getString(4)%></span><br>
                                                                                <span class="item_price"  style="font-family:verdana"><%=rsSupplier.getString(5)%></span><br>
                                                                               
                                                                           <i class="fa fa-refresh" aria-hidden="true"></i> In Stock
                                                                                 <span class="item_price" style="font-family:verdana"><%=rs.getString("quantity")%></span><br>
                                                                              Cost per day
                                                                                 <span class="item_price" style="font-family:verdana"><%=rs.getString("amount")%></span><br>
                                                                                 ----------------------------------- <br>
                                                                              <i class="fa fa-hand-o-right" aria-hidden="true"></i>   Total cost for <%=days%> days :
                                                                                   <span class="item_price" style="font-family:verdana"><%= total %> <% if(p==1){  out.print("A discount of Rs"+premium ); } %></span><br>
                                                                                   
                                                                                     <i class="fa fa-hand-o-right" aria-hidden="true"></i>   Travel cost per KM
                                                                                   <span class="item_price" style="font-family:verdana"><%= rs.getString("travel_cost") %></span><br>
                                                                                   
                                                                                   
                                                                                   <i class="fa fa-hand-o-right" aria-hidden="true"></i>    Place: 
                                                                                
                                                                                 <span class="item_price" style="font-family:verdana"><%=rsSupplier.getString(10)%></span><br>
										
									</div>
									<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
										<form action="ConfirmOrder.jsp?id=<%=rsSupplier.getString(1)%>&Resourceid=<%=Resourceid%>&Requirement_id=<%=request.getParameter("reqid")%>" method="post">
											<fieldset>
												 <i class="fa fa-hand-o-right" aria-hidden="true"></i>  <a href="mapSupplier.jsp?loc=<%=map_location%>"><i>Route</i></a>
												<input type="submit" name="submit" value="Add To Cart" class="button" />
                                                                                              
											</fieldset>
										</form>
									</div>

								</div>
                                                         <%
                                            }
                                            %>
                                                        
                                                        </div>
                                                                                
                                                                               
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
						</div>
                                            <%
                                            
                                            if(rs.next())
                                            {
                                                
                                                 supplier_id=rs.getString("supplier_id");
                                                
                                                
                                               sqlSupplier="select * from supplier_tb where supplier_id='"+supplier_id+"' ";
                                            rsSupplier=dm.ForSelect(sqlSupplier);
                                            if(rsSupplier.next())
                                            {
                                                  map_location=rsSupplier.getString("maplocation");
                                                 String sqlDays="select * from add_supplier_resource_tb where resource_id='"+Resourceid+"' and supplier_id= '"+supplier_id+"'";//and quantity<='"+Quantity+"' (qty no need)
                                            ResultSet rsDays=dm.ForSelect(sqlDays);
                                            if(rsDays.next())
                                            {
                                                
                                                total=rsDays.getInt("amount")*days;
                                            } 
                                                
                                            %>
						<div class="col-xs-4 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
							<!--	<div class="men-thumb-item">
									<img src="images/a2.jpg" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single2.html" class="link-product-add-cart">Quick View</a>
										</div>
									</div>

								</div>-->
								<div class="item-info-product ">
									<h4>
										  <label><a href="single2.html"> <%=rsSupplier.getString(2)%></a>  </label>
									</h4>
									<div class="info-product-price">
                                                                            <i class="fa fa-refresh" aria-hidden="true"></i> Contact:<br>
										<span class="item_price"  style="font-family:verdana" ><%=rsSupplier.getString(4)%></span><br>
                                                                                <span class="item_price"  style="font-family:verdana"><%=rsSupplier.getString(5)%></span><br>
                                                                               
                                                                           <i class="fa fa-refresh" aria-hidden="true"></i> In Stock
                                                                                 <span class="item_price" style="font-family:verdana"><%=rs.getString("quantity")%></span><br>
                                                                              Cost per day
                                                                                 <span class="item_price" style="font-family:verdana"><%=rs.getString("amount")%></span><br>
                                                                                 ----------------------------------- <br>
                                                                              <i class="fa fa-hand-o-right" aria-hidden="true"></i>   Total cost for <%=days%> days :
                                                                                   <span class="item_price" style="font-family:verdana"><%= total %></span><br>
                                                                                    <i class="fa fa-hand-o-right" aria-hidden="true"></i>   Travel cost per KM
                                                                                   <span class="item_price" style="font-family:verdana"><%= rs.getString("travel_cost") %></span><br>
                                                                                   
                                                                                   <i class="fa fa-hand-o-right" aria-hidden="true"></i>    Place: 
                                                                                
                                                                                 <span class="item_price"><%=rsSupplier.getString(10)%></span><br>
									
										
									</div>
									<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
									<form action="ConfirmOrder.jsp?id=<%=rsSupplier.getString(1)%>&Resourceid=<%=Resourceid%>&Requirement_id=<%=request.getParameter("reqid")%>" method="post">
											<fieldset>
												 <i class="fa fa-hand-o-right" aria-hidden="true"></i>  <a href="mapSupplier.jsp?loc=<%=map_location%>"><i>Route</i></a>
												<input type="submit" name="submit" value="Add To Cart" class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
                                                                                <%}
                                            }
                                            if(rs.next())
                                            {
                                                 supplier_id=rs.getString("supplier_id");
                                                
                                                
                                               sqlSupplier="select * from supplier_tb where supplier_id='"+supplier_id+"' ";
                                            rsSupplier=dm.ForSelect(sqlSupplier);
                                            if(rsSupplier.next())
                                            {
                                                  map_location=rsSupplier.getString("maplocation");
                                                 String sqlDays="select * from add_supplier_resource_tb where resource_id='"+Resourceid+"' and supplier_id= '"+supplier_id+"'";//and quantity<='"+Quantity+"' (qty no need)
                                            ResultSet rsDays=dm.ForSelect(sqlDays);
                                            if(rsDays.next())
                                            {
                                                
                                                total=rsDays.getInt("amount")*days;
                                            } 
                                                
                                                
                                                
                                            %>
						<div class="col-xs-4 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<!--<div class="men-thumb-item">
									<img src="images/a3.jpg" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single2.html" class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>-->
								<div class="item-info-product ">
									<h4>
									  <label>	<a href="single2.html"> <%=rsSupplier.getString(2)%></a></label>
									</h4>
									<div class="info-product-price">
                                                                            <i class="fa fa-refresh" aria-hidden="true"></i> Contact:<br>
										<span class="item_price"  style="font-family:verdana" ><%=rsSupplier.getString(4)%></span><br>
                                                                                <span class="item_price"  style="font-family:verdana"><%=rsSupplier.getString(5)%></span><br>
                                                                               
                                                                           <i class="fa fa-refresh" aria-hidden="true"></i> In Stock
                                                                                 <span class="item_price" style="font-family:verdana"><%=rs.getString("quantity")%></span><br>
                                                                              Cost per day
                                                                                 <span class="item_price" style="font-family:verdana"><%=rs.getString("amount")%></span><br>
                                                                                 ----------------------------------- <br>
                                                                              <i class="fa fa-hand-o-right" aria-hidden="true"></i>   Total cost for <%=days%> days :
                                                                                   <span class="item_price" style="font-family:verdana"><%= total %></span><br>
                                                                                    <i class="fa fa-hand-o-right" aria-hidden="true"></i>   Travel cost per KM
                                                                                   <span class="item_price" style="font-family:verdana"><%= rs.getString("travel_cost") %></span><br>
                                                                                   
                                                                                   <i class="fa fa-hand-o-right" aria-hidden="true"></i>    Place: 
                                                                                
                                                                                 <span class="item_price"><%=rsSupplier.getString(10)%></span><br>
									
									</div>
									<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
										<form action="ConfirmOrder.jsp?id=<%=rsSupplier.getString(1)%>&Resourceid=<%=Resourceid%>&Requirement_id=<%=request.getParameter("reqid")%>" method="post">
											<fieldset>
												
                                                                                             <i class="fa fa-hand-o-right" aria-hidden="true"></i>  <a href="mapSupplier.jsp?loc=<%=map_location%>"><i>Route</i></a>
												<input type="submit" name="submit" value="Add To Cart" class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
                                                
                                            <%}
                                            }
                                            %>
						<div class="clearfix"></div>
					
			</div>
                                            
                                            <%
                                            
                                            }
                                              }
                                             }
                                              else
                                              {
                                                  out.println("Requirement List is empty");
                                              }
                                            %>
                                            </div>
                                                                                
                                                                                </div>
                                            
					<!-- //first section -->
					<!-- 2nd section) -->
					<!--<div class="product-sec1">
						<div class="col-md-4 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/a4.jpg" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single2.html" class="link-product-add-cart">Quick View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single2.html">Odonil Blocks (3+1)</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$141.00</span>
										<del>$160.00</del>
									</div>
									<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" />
												<input type="hidden" name="add" value="1" />
												<input type="hidden" name="business" value=" " />
												<input type="hidden" name="item_name" value="Odonil Blocks 50gm Mix (3+1)" />
												<input type="hidden" name="amount" value="141.00" />
												<input type="hidden" name="discount_amount" value="1.00" />
												<input type="hidden" name="currency_code" value="USD" />
												<input type="hidden" name="return" value=" " />
												<input type="hidden" name="cancel_return" value=" " />
												<input type="submit" name="submit" value="Add to cart" class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-4 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/a5.jpg" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single2.html" class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single2.html">Surf Excel Detergent</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$337.00</span>
										<del>$380.00</del>
									</div>
									<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" />
												<input type="hidden" name="add" value="1" />
												<input type="hidden" name="business" value=" " />
												<input type="hidden" name="item_name" value="Surf Excel Detergent Powder, 2 kg" />
												<input type="hidden" name="amount" value="337.00" />
												<input type="hidden" name="discount_amount" value="1.00" />
												<input type="hidden" name="currency_code" value="USD" />
												<input type="hidden" name="return" value=" " />
												<input type="hidden" name="cancel_return" value=" " />
												<input type="submit" name="submit" value="Add to cart" class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-4 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/a6.jpg" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single2.html" class="link-product-add-cart">Quick View</a>
										</div>
									</div>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single2.html">Sunsilk Shampoo</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$294.50</span>
										<del>$325.00</del>
									</div>
									<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" />
												<input type="hidden" name="add" value="1" />
												<input type="hidden" name="business" value=" " />
												<input type="hidden" name="item_name" value="Sunsilk Shampoo, 650ml" />
												<input type="hidden" name="amount" value="294.50" />
												<input type="hidden" name="discount_amount" value="1.00" />
												<input type="hidden" name="currency_code" value="USD" />
												<input type="hidden" name="return" value=" " />
												<input type="hidden" name="cancel_return" value=" " />
												<input type="submit" name="submit" value="Add to cart" class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>-->
					<!-- //2nd section  -->
					<!-- 3rd section -->
					<!--<div class="product-sec1">
						<div class="col-md-4 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/a8.jpg" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single2.html" class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single2.html">Gala Leader Floor Mop</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$149.00</span>
										<del>$180.00</del>
									</div>
									<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" />
												<input type="hidden" name="add" value="1" />
												<input type="hidden" name="business" value=" " />
												<input type="hidden" name="item_name" value="Gala Leader Floor Mop" />
												<input type="hidden" name="amount" value="149.00" />
												<input type="hidden" name="discount_amount" value="1.00" />
												<input type="hidden" name="currency_code" value="USD" />
												<input type="hidden" name="return" value=" " />
												<input type="hidden" name="cancel_return" value=" " />
												<input type="submit" name="submit" value="Add to cart" class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-4 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/a7.jpg" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single2.html" class="link-product-add-cart">Quick View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single2.html">Spotzero Spin Mop</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$888.00</span>
										<del>$999.00</del>
									</div>
									<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" />
												<input type="hidden" name="add" value="1" />
												<input type="hidden" name="business" value=" " />
												<input type="hidden" name="item_name" value="Spotzero Spin Mop with Bigger Wheels" />
												<input type="hidden" name="amount" value="888.00" />
												<input type="hidden" name="discount_amount" value="1.00" />
												<input type="hidden" name="currency_code" value="USD" />
												<input type="hidden" name="return" value=" " />
												<input type="hidden" name="cancel_return" value=" " />
												<input type="submit" name="submit" value="Add to cart" class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-4 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/a9.jpg" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single2.html" class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single2.html">Spotzero Zero Dust</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$139.00</span>
										<del>$150.00</del>
									</div>
									<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" />
												<input type="hidden" name="add" value="1" />
												<input type="hidden" name="business" value=" " />
												<input type="hidden" name="item_name" value="Spotzero Zero Dust Broom" />
												<input type="hidden" name="amount" value="139.00" />
												<input type="hidden" name="discount_amount" value="1.00" />
												<input type="hidden" name="currency_code" value="USD" />
												<input type="hidden" name="return" value=" " />
												<input type="hidden" name="cancel_return" value=" " />
												<input type="submit" name="submit" value="Add to cart" class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>-->
					<!-- //3rd section -->
					<!-- 4th section -->
					<!--<div class="product-sec1">
						<div class="col-md-4 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/a10.jpg" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single2.html" class="link-product-add-cart">Quick View</a>
										</div>
									</div>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single2.html">All Out 480 Hours</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$89.00</span>
										<del>$120.00</del>
									</div>
									<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" />
												<input type="hidden" name="add" value="1" />
												<input type="hidden" name="business" value=" " />
												<input type="hidden" name="item_name" value="All Out 480 Hours Refill (45 ml)" />
												<input type="hidden" name="amount" value="89.00" />
												<input type="hidden" name="discount_amount" value="1.00" />
												<input type="hidden" name="currency_code" value="USD" />
												<input type="hidden" name="return" value=" " />
												<input type="hidden" name="cancel_return" value=" " />
												<input type="submit" name="submit" value="Add to cart" class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-4 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/a11.jpg" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single2.html" class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single2.html">Wall Hanging</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$349.00</span>
										<del>$400.00</del>
									</div>
									<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" />
												<input type="hidden" name="add" value="1" />
												<input type="hidden" name="business" value=" " />
												<input type="hidden" name="item_name" value="AsianHobbyCrafts Wall Hanging" />
												<input type="hidden" name="amount" value="349.00" />
												<input type="hidden" name="discount_amount" value="1.00" />
												<input type="hidden" name="currency_code" value="USD" />
												<input type="hidden" name="return" value=" " />
												<input type="hidden" name="cancel_return" value=" " />
												<input type="submit" name="submit" value="Add to cart" class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-4 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/a12.jpg" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single2.html" class="link-product-add-cart">Quick View</a>
										</div>
									</div>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href="single2.html">Colin Regular Refill</a>
									</h4>
									<div class="info-product-price">
										<span class="item_price">$155.00</span>
										<del>$180.00</del>
									</div>
									<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" />
												<input type="hidden" name="add" value="1" />
												<input type="hidden" name="business" value=" " />
												<input type="hidden" name="item_name" value="Colin Regular Refill-1L,with Trigger-500 ml" />
												<input type="hidden" name="amount" value="155.00" />
												<input type="hidden" name="discount_amount" value="1.00" />
												<input type="hidden" name="currency_code" value="USD" />
												<input type="hidden" name="return" value=" " />
												<input type="hidden" name="cancel_return" value=" " />
												<input type="submit" name="submit" value="Add to cart" class="button" />
											</fieldset>
										</form>
									</div>

								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>-->
					<!-- //4th section  -->

				
			<!-- //product right -->
		</div>
	</div>
	<!-- //top products -->
	<!-- special offers -->
	
	<!-- //special offers -->
	<!-- newsletter -->
	<div class="footer-top">
		<div class="container-fluid">
			<div class="col-xs-8 agile-leftmk">
				<h2>Construction Resource</h2>
				
				<form action="#" method="post">
					<input type="email" placeholder="E-mail" name="email" required="">
					<input type="submit" value="Subscribe">
				</form>
				<div class="newsform-w3l">
					<span class="fa fa-envelope-o" aria-hidden="true"></span>
				</div>
			</div>
			<div class="col-xs-4 w3l-rightmk">
                            <img src="../online_shoppy/web/images/tab3.png" alt=" ">
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //newsletter -->
	<!-- footer -->
	<footer>
		<div class="container">
			<!-- footer first section -->
			
			<!-- //footer first section -->
			<!-- footer second section -->
			
			<!-- //footer second section -->
			<!-- footer third section -->
			<div class="footer-info w3-agileits-info">
				<!-- footer categories -->
			
				<!-- //footer categories -->
				<!-- quick links -->
				
				<!-- //quick links -->
				<!-- social icons -->
				
				<!-- //social icons -->
				<div class="clearfix"></div>
			</div>
			<!-- //footer third section -->
			<!-- footer fourth section (text) -->
			
			<!-- //footer fourth section (text) -->
		</div>
	</footer>
	<!-- //footer -->
	<!-- copyright -->
	<div class="copy-right">
		<div class="container">
			<p>© 2019 Construction Resource | By Integos		</p>
		</div>
	</div>
	<!-- //copyright -->

	<!-- js-files -->
	<!-- jquery -->
	<script src="../online_shoppy/web/js/jquery-2.1.4.min.js"></script>
	<!-- //jquery -->

	<!-- popup modal (for signin & signup)-->
	<script src="../online_shoppy/web/js/jquery.magnific-popup.js"></script>
	<script>
		$(document).ready(function () {
			$('.popup-with-zoom-anim').magnificPopup({
				type: 'inline',
				fixedContentPos: false,
				fixedBgPos: true,
				overflowY: 'auto',
				closeBtnInside: true,
				preloader: false,
				midClick: true,
				removalDelay: 300,
				mainClass: 'my-mfp-zoom-in'
			});

		});
	</script>
	<!-- Large modal -->
	<!-- <script>
		$('#').modal('show');
	</script> -->
	<!-- //popup modal (for signin & signup)-->

	<!-- cart-js -->
	<script src="../online_shoppy/web/js/minicart.js"></script>
	<script>
		paypalm.minicartk.render(); //use only unique class names other than paypal1.minicart1.Also Replace same class name in css and minicart.min.js

		paypalm.minicartk.cart.on('checkout', function (evt) {
			var items = this.items(),
				len = items.length,
				total = 0,
				i;

			// Count the number of each item in the cart
			for (i = 0; i < len; i++) {
				total += items[i].get('quantity');
			}

			if (total < 3) {
				alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
				evt.preventDefault();
			}
		});
	</script>
	<!-- //cart-js -->

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

	<!-- smoothscroll -->
	<script src="../online_shoppy/web/js/SmoothScroll.min.js"></script>
	<!-- //smoothscroll -->

	<!-- start-smooth-scrolling -->
	<script src="../online_shoppy/web/js/move-top.js"></script>
	<script src="../online_shoppy/web/js/easing.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smooth-scrolling -->

	<!-- smooth-scrolling-of-move-up -->
	<script>
		$(document).ready(function () {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<!-- //smooth-scrolling-of-move-up -->

	<!-- for bootstrap working -->
	<script src="../online_shoppy/web/js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<!-- //js-files -->

</body>

</html>