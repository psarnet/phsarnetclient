<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<script src="${pageContext.request.contextPath}/resources/static/javascript/configuration.js"></script>
	
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal.userId" var="userid" />
</sec:authorize>



<!-- Line top navbar -->
<style>
.navbar-static-top {
	border: none;
}

</style>


<nav class="navbar navbar-static-top line-navbar-one">
	<div class="header">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 divtop">
					
				</div>
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
		<!-- MAIN MENU CATEGORY -->
		<jsp:include
			page="${pageContext.request.contextPath}/WEB-INF/pages/home/mainmenu.jsp"></jsp:include>
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<!-- Top navbar button -->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#line-navbar-collapse-1">
				<span class="sr-only">Toggle</span> <span class="fa fa-search"></span>
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
				<li><a href="http://120.136.24.174:13300/login?continue-site=http://192.168.178.141:9999" 
					class="login" data-toggle="modal" data-target=".bs-example-modal-sm"><i class="fa fa-user" aria-hidden="true">
					</i>&nbsp;ចូលប្រើគណនី</a>
			    </li>
			    <li>		
					<a href="http://www.khmeracademy.org/register" class="login" target="new"><i class="fa fa-user" aria-hidden="true"></i>&nbsp;ចុះឈ្មោះ</a>
				</li>
			</ul>
			<!-- end display -->
		</sec:authorize>	
		
			<sec:authorize access="isAuthenticated()">
			<!-- Display when logined -->
			<ul class="nav navbar-nav navbar-right lno-socials"  >
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
	
		
		
			
	</div>
	<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>