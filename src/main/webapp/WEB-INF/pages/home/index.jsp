<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myindexApp">
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include
	page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/home-layout/header.jsp"></jsp:include>
<title>Shopping Mall</title>
<!--PRODUCT AngularJS -->
<script
	src="${pageContext.request.contextPath}/resources/static/angular-app/indexdata.js"></script>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal.userId" var="userid" />
</sec:authorize>
<style>
	@media (min-width: 1200px){
		.line-navbar-two .lnt-search-form .form-control {
		    width: 520px;
		}
	}
	


</style>
</head>
<body ng-controller="myindexCtr"  ng-init="getwishlist(${userid});">
	<!-- Line top navbar -->
	<nav class="navbar navbar-static-top line-navbar-one">
	<div class="header">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 divtop"></div>
				<div class="col-sm-6 divtop">
					<a href="#"><img
						src="${pageContext.request.contextPath}/resources/static/images/home/cam.gif"
						class="lan pull-right" /></a> <a href="#"><img
						src="${pageContext.request.contextPath}/resources/static/images/home/eng.gif"
						class="lan pull-right" /></a>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<!-- Top navbar button -->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#line-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span class="fa fa-search paddingo "></span>
			</button>
			<!-- left navbar button -->
			<button class="lno-btn-toggle">
				<span class="fa fa-bars"></span>
			</button>
			<!-- Brand image -->
			<a class="navbar-brand" href="${pageContext.request.contextPath}/home"> <img alt="Brand"
				src="${pageContext.request.contextPath}/resources/static/images/home/tostenh500.png"
				class="divimg">
			</a>
		</div>
		<!--SEARCH PRODUCT-->
		<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/home-layout/searching.jsp"></jsp:include>
		<!-- Search For Small Device -->
		<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/home-layout/smallsearchdevice.jsp"></jsp:include>
		<sec:authorize access="isAnonymous()">
			<!-- Display without login -->
			<ul class="unlogin navbar-nav navbar-right">
				<li><a href="http://120.136.24.174:13300/login?continue-site=http://localhost:9999" class="login" >
					<i class="fa fa-user" aria-hidden="true"></i>&nbsp;ចូលប្រើគណនី
					</a>
			    </li>
			    <li>		
					<a href="http://www.khmeracademy.org/register" class="login" target="new"><i class="fa fa-user" aria-hidden="true"></i>&nbsp;ចុះឈ្មោះ</a>
				</li>
			</ul>
			<!-- end display -->
		</sec:authorize>	
		<sec:authorize access="isAuthenticated()">
			<!-- Display when logined -->
			<ul class="nav navbar-nav navbar-right lno-socials">
				<li>
					<!--Favorite -->
				
					<ul class="nav navbar-nav navbar-right lnt-shopping-cart">
						<li class="dropdown">
							<div class="btn-group" role="group" aria-label="...">
								<div class="" role="">
									<!-- Edit Seak -->
									<button type="button" class="mybtn lnt-cart dropdown-toggle"
										data-toggle="dropdown" aria-expanded="false">
										<span class="fa fa-heart-o " style="color: #de6161;"></span> 
										<sup><span class="badge" style="margin-left:-40px;margin-left: -66px; z-index:-10px margin-top:-20px; background-color:red">{{favs.length}}</span></sup>
									</button>
									<!-- SEAK SECTION0N -->
									<ul class="dropdown-menu " role="menu">
										<li>
											<div class="lnt-cart-products">
												<p>Product List<p>
											</div>
										</li>
										<!-- SEAK SECTION  -->
				                            <li ng-repeat="fav in favlist">
				                              <div class="lnt-cart-products">
				                               <a href="{{fav.PRODUCT.URL}}"> <img src="{{fav.PRODUCT.IMAGE}}" class="sm-img"  alt="Product title" target="_blank"></a>
				                                <span class="lnt-product-info"  style="color: black">
				                                  <span class="lnt-product-name"></span>
				                                  <span class="lnt-product-price"> &rarr; {{fav.PRODUCT.PRICE}}</span>
				                                  <button type="button" class="lnt-product-remove btn-link" ng-click="unfavourit(fav)">Remove?</button>
				                                </span>
				                              </div>
				                            </li>
				                            <li class="lnt-cart-actions see">
				                             	<a href="user/wishlist" class="lnt-view-cart-btn ">See All </a>
				                            </li>
				                            <!-- END SEAK SECTION -->
									</ul>
								</div>
							</div>
						</li>
					</ul> <!-- /.lnt-shopping-cart -->
				</li>
			
				<li>
					<!-- SEAK SECTION -->
					<!--History -->
					<ul class="nav navbar-nav navbar-right lnt-shopping-cart">
						<li>
						<a href="user/wishlist"><span class="fa fa-history"></span></a>
						</li>
					</ul>
				</li>
				</a>
			</ul>
			<!-- end display when logout -->
		</sec:authorize>
		
		
		


	</div><!-- /.navbar-collapse -->
	      </div><!-- /.container -->
	    </nav>
	</div>
	<!-- CONTAINER -->
	<div class="row">
        <div class="span12">
       	  <div class="col-sm-2">
              <div id="mn-wrapper">
                  <div class="mn-sidebar menucolor" id="mn-sidebar">
                     <div class="mn-toggle">
							<i class="fa fa-bars"></i>
						</div>
                      <div class="mn-navblock">
                      	<h3 class="catetitle">
								<i class="fa fa-list-ul" aria-hidden="true"></i>&nbsp;ប្រភេទទំនិញ</h3>
              			
                        <ul class="mn-vnavigation" id="mn-vnavigation">
                          <li class="dropdown-submenu"
									ng-repeat="maincate in maincategory" ng-init="test = $index">
                            <a tabindex="-1" href="#">{{maincate.CATEGORY}}</a>
                            <ul class="dropdown-menu  "
										style="background-color:white;height: 725px;width: 260px;">
                              <li class="dropdown-submenu"
											ng-repeat="sub1 in maincategory[test].SUB_CATEGORY ">
                                <a href="#" ng-bind="sub1.SUB_CATEGORY"></a>
                                <ul class="dropdown-menu parent"
												style="background-color:white;height: 725px;width: 284px;">
                                  <li ng-repeat="sub2 in sub1.SUB_TWO_CATEGORY">
                                  	<a  href="${pageContext.request.contextPath}/home/{{'product?id='+sub2.ID+'&sub1Id='+sub1.ID}}" ng-bind="sub2.SUB_CATEGORY"></a>
                                  </li>
                                 
                                </ul>
                              </li>
                            </ul>
                          </li>
								<!-- dropdown-submenu -->
                        </ul>
                      </div>
                    </div>
                  </div>
             </div>
			<!-- END MENU -->
        </div>
		<!-- COL-MD-2 -->
        <div class="col-md-10 col-sm-10">
           <!-- LASTEST PRODUCT -->
           <div class="test">
              <h3>ផលិតផលថ្មីៗ</h3>
    			<data-owl-carousel data-options="{navigation: true}">
	               <!-- <div owl-carousel-item="" class="item lastitem " ng-repeat="i in lastProductLength " ng-init="i = $parent.start; $parent.start=$parent.start+2;"> -->
	               <div owl-carousel-item="" class="item lastitem "
					ng-repeat="i in lastProductLength "
					ng-init="i = $parent.start1; $parent.start1=$parent.start1+2;">
                    <div class="thumbnail">
                        <a href="" class="vender"><img
							src="{{lastpro[i].SOURCE.SOURCE.LOGO}}"></a>
                        <a href="{{lastpro[i].URL}}" target="_blank"
							ng-click="addhistory(${userid }, lastpro[i].ID)">
                          <div ng-init="i=(i==null)?0:i"></div>		
                          <img src="{{lastpro[i].IMAGE}}" alt="product alt" style="max-heigth:150px;height:130px ;width:85%;">
                          <div class="caption">
                            <div class="title-des">
                             <span class="price">{{'$'+lastpro[i].PRICE}}</span> 
                             <span ><a class="viewdetail" href="{{lastpro[i].URL}}" target="new">ព័ត៌មានបន្ថែម</a> </span>
                              <p>{{lastpro[i].TITLE | limitTo : 30}}...</p>
                            </div>
                        
						</a>
                          <div class="btn-div">
                          	<sec:authorize access="isAnonymous()">
							 	<button type="submit" class="btn btn-primary login" ng-click="requestLogin()">
							 		<span class="fa fa-heart">&nbsp;</span>FAVORITE
							 	</button>
							 </sec:authorize>
                          	<sec:authorize access="isAuthenticated()">
							 	<button type="submit" class="btn btn-primary" ng-click="addfavourit(${userid}, lastpro[i].ID)">
							 		<span class="fa fa-heart">&nbsp;</span>FAVORITE
							 	</button>
							 </sec:authorize>
                          </div>
                        </div>
                      </div>
         			
                    <div class="thumbnail">
                      <a href="#" class="vender"><img src="{{lastpro[i].SOURCE.SOURCE.LOGO}}"></a>
                      <a href="{{lastpro[i+1].URL}}" target="_blank" ng-click="addhistory(${userid }, lastpro[i+1].ID)">
                        <img src="{{lastpro[i+1].IMAGE}}" alt="product alt" class="images" style="max-heigth:150px;height:130px ;width:85%;">
                       
						 <div class="caption">
                          <div class="title-des">
	                       <span style="float:left;color:red;font-size:15px;">{{'$'+lastpro[i+1].PRICE}}</span> 
	                       <span ><a href="{{lastpro[i].URL}}" target="new" class="viewdetail"  >ព័ត៌មានបន្ថែម</a></span>
                            <p>{{lastpro[i+1].TITLE | limitTo : 30}}...</p>
                          </div>
                      
					</a>
                        <div class="btn-div">
                          <sec:authorize access="isAnonymous()">
							 	<button type="submit" class="btn btn-primary login" ng-click="requestLogin()">
							 		<span class="fa fa-heart">&nbsp;</span>FAVORITE
							 	</button>
							 </sec:authorize>
                          	<sec:authorize access="isAuthenticated()">
							 	<button type="submit" class="btn btn-primary" ng-click="addfavourit(${userid}, lastpro[i+1].ID)">
							 		<span class="fa fa-heart">&nbsp;</span>FAVORITE
							 	</button>
							 </sec:authorize>
                        </div>
                      </div>
                    
			</div>
                </div>
		<!-- END ITEM -->
            </data-owl-carousel>
    </div>
    </div>
    </div> 
    
    <div class="row">
      <div class="span12">
       	<div class="col-sm-2"></div>
			<!-- COL-MD-2 -->
        <div class="col-md-10 col-sm-10">
        	<!-- Filter by Website -->
	         <ul class="nav nav-tabs" id="website">
			          <li ng-repeat="src in source | limitTo : 10" id="tab-pills"
						ng-class="{'active': $index== 0}" ng-click="getSourceId($event)">
			             <a data-toggle="tab" href="#" data-value="{{src.ID}}" ng-bind="src.DOMAIN"></a>
			          </li>
			 </ul>
           <!-- LASTEST PRODUCT -->
    		<data-owl-carousel data-options="{navigation: true}" ng-init="j=0">
                  <div owl-carousel-item="" class="item lastitem "
					ng-repeat="j in proWebsitelength "
					ng-init="j = $parent.start; $parent.start=$parent.start+2;">
                    <div ng-init="j=(j==null)?0:j"></div>	
                    <div class="thumbnail">
                      <a href="#" class="vender"><img
							src="{{proWebsite[j].SOURCE.SOURCE.LOGO}}"></a>
                        <a href="{{proWebsite[j].URL}}" target="_blank"
							ng-click="addhistory(${userid }, proWebsite[j].ID)">
                          <img src="{{proWebsite[j].IMAGE}}" alt="product alt" style="max-heigth:150px;height:130px ;width:85%;">
                          <div class="caption">
                            <div class="title-des">
                               <span class="price">{{'$'+proWebsite[j].PRICE}}</span> 
                               <span ><a class="viewdetail" href="{{proWebsite[i].URL}}" target="new">ព័ត៌មានបន្ថែម</a></span>
                              <p>{{proWebsite[j].TITLE | limitTo : 50}}...</p>
                            </div>
                        
						</a>
                          <div class="btn-div">
	                           <sec:authorize access="isAnonymous()">
								 	<button type="submit" class="btn btn-primary login">
								 		<span class="fa fa-heart">&nbsp;</span>FAVORITE
								 	</button>
								 </sec:authorize>
	                          	<sec:authorize access="isAuthenticated()">
								 	<button type="submit" class="btn btn-primary ng-click="requestLogin()""
									ng-click="addfavourit(${userid}, proWebsite[j].ID)">
								 		<span class="fa fa-heart">&nbsp;</span>FAVORITE
								 	</button>
								 </sec:authorize>
                          </div>
                        </div>
                      </div>
         
                    <div class="thumbnail">
                    <a href="#" class="vender"><img
						src="{{proWebsite[j].SOURCE.SOURCE.LOGO}}"></a>
                      <a href="{{proWebsite[j+1].URL}}" target="_blank"
						ng-click="addhistory(${userid }, proWebsite[j+1].ID)">
                        <img src="{{proWebsite[j+1].IMAGE}}" alt="product alt" style="max-heigth:150px;height:130px ;width:85%;">
                        <div class="caption">
                          <div class="title-des">
                           <span class="price">{{'$'+proWebsite[j].PRICE}}</span> 
                           <span ><a href="{{proWebsite[i].URL}}" target="new" class="viewdetail">ព័ត៌មានបន្ថែម</a></span>
                            <p>{{proWebsite[j+1].TITLE | limitTo : 50}}...</p>
                          </div>
                      
					</a>
                        <div class="btn-div">
                          <sec:authorize access="isAnonymous()">
								 	<button type="submit" class="btn btn-primary login" ng-click="requestLogin()">
								 		<span class="fa fa-heart">&nbsp;</span>FAVORITE
								 	</button>
								 </sec:authorize>
	                          	<sec:authorize access="isAuthenticated()">
								 	<button type="submit" class="btn btn-primary"
								ng-click="addfavourit(${userid}, proWebsite[j+1].ID)">
								 		<span class="fa fa-heart">&nbsp;</span>FAVORITE
								 	</button>
								</sec:authorize>
                        </div>
                      </div>
                    
			</div>
                </div>
            </data-owl-carousel>
           </div>
	<!-- COL-MD-10 COL-SM-10 -->
        </div>
	<!-- SPAN12 -->
     </div>
	<!-- ROW -->
	
	
     <script type="text/javascript">
		$(document).ready(function() {
			$("#owl-demo").owlCarousel({
				navigation : true,
				pagination : true
			});

		});
	</script>

	<!-- Menu For Small Devices -->
    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/home-layout/menusmalldevice.jsp"></jsp:include>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/home-layout/footer.jsp"></jsp:include>
	
          

												</body>
</html>