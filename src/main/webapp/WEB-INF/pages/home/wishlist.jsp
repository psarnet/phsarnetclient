<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/home-layout/header.jsp"></jsp:include>
	<title>Insert title here</title>
</head>
<body>
	<!-- Line top navbar -->
    <nav class="navbar navbar-static-top line-navbar-one">
      <div class="header"> 
            <div class="container">
              <div class="row">
                <div class="col-sm-6 divtop" >
                  <a href="#" class="login"><i class="fa fa-user" aria-hidden="true"></i>&nbsp;Login</a>
                  <a href="#" class="login"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;Register</a>
                  <a href="#">Hi,Welcome </a>
                </div>
                <div class="col-sm-6 divtop">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/static/images/home/cam.gif" class="lan pull-right" /></a>
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/static/images/home/eng.gif" class="lan pull-right"  /></a>
                </div>
              </div>
            </div>
      </div>
      <div class="container">
        <ul class="nav navbar-nav lnt-nav-mega line-navbar-two" id="line-navbar-collapse-2">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                <span class="fa fa-bars"></span>
              
              </a>
              <div class="dropdown-menu" role="menu">
                <div class="lnt-dropdown-mega-menu">
                  <!-- List of categories -->
                  <ul class="lnt-category list-unstyled">
                    <li class="active"><a href="#subcategory-home">Home, garden and tools</a></li>
                    <li><a href="#subcategory-music">Digital music</a></li>
                    <li><a href="#subcategory-books">Books <span class="label label-danger">Hot</span></a></li>
                    <li><a href="#subcategory-fashion">Fashion and beauty</a></li>
                    <li><a href="#subcategory-movies">Movies and games</a></li>
                  </ul>
                   <div class="lnt-subcategroy-carousel-wrap container-fluid">
                      <div id="subcategory-home" class="active">
                       <!--+++++++++++++++++++++sublevel1++++++++++++++++-->
                        <div class="lnt-subcategory1 col-sm-12 col-md-12" >
                         <ul class="list-unstyled col-sm-6">
                            <!--First Item-->
                            <li><a href="#">First Item</a>
                            <!--+++++++++++++ sublevel2++++++++++++++++-->
                             <div class="lnt-subcategory2 col-sm-4 col-md-4" >
                              <ul class="list-unstyled col-sm-6">
                                <li>Sub Item</li>
                                <li>Sub Item</li>
                                <li>Sub Item</li>
                              </ul>
                             </div>
                            <!--++++++++++++ ends-sub-level2+++++++++++-->
                            </li>
                            <!--Second Item-->
                            <li><a href="#">Second Item</a></li>
                            <!--Third Item-->
                            <li><a href="#">Item</a></li>
                         </ul>
                         </div>
                        </div> 
                      </div>
                 
               </div>
              </div>
            </li>
          </ul>
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <!-- Top navbar button -->
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#line-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="fa fa-search"></span>
          </button>
          <!-- left navbar button -->
          <button class="lno-btn-toggle">
            <span class="fa fa-bars"></span>
          </button>
          <!-- Brand image -->
          <a class="navbar-brand" href="#">
            <img alt="Brand" src="${pageContext.request.contextPath}/resources/static/images/home/logo.png">
          </a>
        </div>
        
        <!--SeachBox-->
        <div class="line-navbar-two">
             <form class="navbar-form navbar-left lnt-search-form" role="search">
            <div class="form-group">
              <div class="input-group">
                <div class="input-group-btn lnt-search-category">
                  <button type="button" class="btn btn-default dropdown-toggle selected-category-btn" data-toggle="dropdown" aria-expanded="false">
                    <span class="selected-category-text">All </span>
                    <span class="caret"></span>
                  </button>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Fashion</a></li>
                    <li><a href="#">Sport</a></li>
                    <li><a href="#">Electronics</a></li>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Toys</a></li>
                    <li><a href="#">Motors</a></li>
                  </ul>
                </div><!-- /btn-group -->
                <input type="text" class="form-control lnt-search-input" aria-label="Search" placeholder="Search leader">
              </div><!-- /input-group -->
            </div>
            <button type="submit" class="btn btn-search"><span class="fa fa-search"></span></button>
          </form> <!-- /.lnt-search-form -->
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="line-navbar-collapse-1">
          <form class="navbar-form navbar-left lno-search-form visible-xs" role="search">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Search">
              </div>
            <button type="submit" class="btn btn-search"><span class="fa fa-search"></span></button>
          </form>
          <ul class="nav navbar-nav navbar-right lnt-shopping-cart">
		        <li>
		        	<a href="#" class="facebook pull-right"><i class="fa fa-facebook-square facebook" aria-hidden="true"></i></a>
		        </li>
		        <li>
		        	<a href="#" class="twitter pull-right"><i class="fa fa-google-plus-square google" aria-hidden="true"></i></a>
		        </li>
                <li class="dropdown">
                    <div class="btn-group" role="group" aria-label="...">
                        <div class="btn-group" role="group">
                          <button type="button" class="mybtn lnt-cart dropdown-toggle " 
                            data-toggle="dropdown" aria-expanded="false">
                           <span class="fa fa-gratipay"></span>
                           <span class="cart-item-quantity"></span>
                          </button>
                          <ul class="dropdown-menu " role="menu">
                            <li>
                              <div class="lnt-cart-products">
                                 <p>Product List<p>
                              </div>
                            </li>
                            <li>
                              <div class="lnt-cart-products">
                                <img src="http://placehold.it/60x60" alt="Product title">
                                <span class="lnt-product-info">
                                  <span class="lnt-product-name">Leader bag</span>
                                  <span class="lnt-product-price"><del>$790</del> &rarr; $600</span>
                                  <button type="button" class="lnt-product-remove btn-link">Remove?</button>
                                </span>
                              </div>
                            </li>
                            <li>
                              <div class="lnt-cart-products">
                                <img src="http://placehold.it/60x60" alt="Product title">
                                <span class="lnt-product-info">
                                  <span class="lnt-product-name">Awesome pack of new</span>
                                  <span class="lnt-product-price">$700</span>
                                  <button type="button" class="lnt-product-remove btn-link">Remove?</button>
                                </span>
                              </div>
                            </li>
                            <li class="lnt-cart-actions">
                             	<a href="#" class="lnt-view-cart-btn">See All </a>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </li>
                  </ul> <!-- /.lnt-shopping-cart -->
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
    </nav>
    <!--Filter Product-->
   <nav class="navbar navbar-static-top" >
      <div class="container" >
        <div class="row">
	            <div class="col-md-12">
	                <div class="profile">
		                <img src="${pageContext.request.contextPath}/resources/static/images/home/user.jpg"  class="imgpro pull-left" alt="User"/>
		                <h3 class="pull-left margintop">&emsp;Julie MaMa </h3>
		                <button class="btn btn-default margintop pull-right"><i class="fa fa-list" aria-hidden="true"></i>
		                	WishList
		                </button>
		                <button class="btn btn-default margintop pull-right"><i class="fa fa-history" aria-hidden="true"></i>
		                	History
		                </button>
	                </div>
	             </div>
	           
				<!-- Product List -->
		        <!-- Page Heading -->
		            <div class="col-md-12">
		                <h1 class="page-header" style="margin-top:20px;">
		                    <small>Product List</small>
		                </h1>
		            </div>
		        </div>
		         <!-- Item -->
			    <div class="col-sm-3 ">
			        <div class="thumbnail">
			            <div class="vender">
			              <a href="http://www.kaymu.com.kh/"><img src ="http://shop168.com.kh/skins/basic/customer/images/logo_website200.png"></a>
			            </div>
			            <a href="#">
			             <img src="${pageContext.request.contextPath}/resources/static/images/home/b.jpg" alt="product alt"/>
			             <div class="caption">
			                  <div class="title-des">
			                    <h4>15$</h4>
			                    <p>Intrins mindshare via internal or "organic" sources.</p>
			                  </div>
			              </a>
			               		<div class="buy">
			                  		<button type="submit" class="btn btn-primary ">Buy</span></a></button>
			               		</div>
			              </div>
			          </div>
			      </div>
      			 <!--End Item-->
      			      <!-- Item -->
			    <div class="col-sm-3 ">
			        <div class="thumbnail">
			            <div class="vender">
			              <a href="http://www.kaymu.com.kh/"><img src ="http://shop168.com.kh/skins/basic/customer/images/logo_website200.png"></a>
			            </div>
			            <a href="#">
			             <img src="${pageContext.request.contextPath}/resources/static/images/home/a.jpg" alt="product alt"/>
			             <div class="caption">
			                  <div class="title-des">
			                    <h4>15$</h4>
			                    <p>Intrins mindshare via internal or "organic" sources.</p>
			                  </div>
			              </a>
			               		<div class="buy">
			                  		<button type="submit" class="btn btn-primary ">Buy</span></a></button>
			               		</div>
			              </div>
			          </div>
			      </div>
      			 <!--End Item-->
      			      <!-- Item -->
			    <div class="col-sm-3 ">
			        <div class="thumbnail">
			            <div class="vender">
			              <a href="http://www.kaymu.com.kh/"><img src ="http://shop168.com.kh/skins/basic/customer/images/logo_website200.png"></a>
			            </div>
			            <a href="#">
			             <img src="${pageContext.request.contextPath}/resources/static/images/home/b.jpg" alt="product alt"/>
			             <div class="caption">
			                  <div class="title-des">
			                    <h4>15$</h4>
			                    <p>Intrins mindshare via internal or "organic" sources.</p>
			                  </div>
			              </a>
			               		<div class="buy">
			                  		<button type="submit" class="btn btn-primary ">Buy</span></a></button>
			               		</div>
			              </div>
			          </div>
			      </div>
      			 <!--End Item-->
      			      <!-- Item -->
			    <div class="col-sm-3 ">
			        <div class="thumbnail">
			            <div class="vender">
			              <a href="http://www.kaymu.com.kh/"><img src ="http://shop168.com.kh/skins/basic/customer/images/logo_website200.png"></a>
			            </div>
			            <a href="#">
			             <img src="${pageContext.request.contextPath}/resources/static/images/home/a.jpg" alt="product alt"/>
			             <div class="caption">
			                  <div class="title-des">
			                    <h4>15$</h4>
			                    <p>Intrins mindshare via internal or "organic" sources.</p>
			                  </div>
			              </a>
			               		<div class="buy">
			                  		<button type="submit" class="btn btn-primary ">Buy</span></a></button>
			               		</div>
			              </div>
			          </div>
			      </div>
      			 <!--End Item-->
            </div>
        </div>
      </div>
   </nav>
   <!-- Menu For Small Devices -->
    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/home-layout/menusmalldevice.jsp"></jsp:include>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/home-layout/footer.jsp"></jsp:include>
</body>
</html>