<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myProductApp">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/home-layout/header.jsp"></jsp:include>
	<title>Shopping Mall</title>
	 <sec:authorize access="isAuthenticated()">
	 	<sec:authentication property="principal.userId" var="userid"/>
	 </sec:authorize>
	 <style>
	 	.height-sm{
	 		height: 248px;
	 	}
	 </style>
</head>
<body ng-controller="myProductCtr"  ng-init="getwishlist(${userid});" >
	<!-- INCLUDE WEB HEADER -->
		<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/home-layout/webheader.jsp"></jsp:include>
	<!-- END -->
   <!--Filter Product-->
   <nav class="navbar navbar-static-top" style="background-color:#fff;border-bottom: 1px solid #eee;">
      <div class="container" >
          <div class="row">
            <div class="col-sm-12">
                <div class="dropdown ">
                 <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">
                 	{{sub1name | limitTo : 15}}...
                     <span class="caret"></span></button>
                     <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                       <li role="presentation" ng-repeat="sub2 in subcategory2 | limitTo:15" ng-click="getSub2Id($event)">
	                       	<a role="menuitem" data-value="{{sub2.ID}}" tabindex="-1" href="${pageContext.request.contextPath}/home/{{'product?id='+sub2.ID+'&sub1Id='+sub1Id}}" ng-bind="sub2.SUB_CATEGORY"></a>
                       </li>
                     </ul>
                </div>
                <div class="dropdown">
                    <button class="btn btn-default dropdown-toggle" type="button" id="menu2" data-toggle="dropdown">{{webname}}
                     <span class="caret"></span></button>
                     <ul class="dropdown-menu" role="menu" aria-labelledby="menu2" ng-model="sourceId">
                       <li role="presentation" ng-repeat="src in source" ng-click="searchProByWeb($event)">
	                       <a href="" role="menuitem" tabindex="-1"  data-value={{src.ID}} data-name={{src.DOMAIN}}>
	                        	{{src.DOMAIN}}
	                       </a>
                       </li>
                     </ul>
                </div>
                
              <!-- Compare Price -->
                <button class="btn btn-default  test" id="open" type="button"  style="margin-left:0px;">តម្លៃ<span class="caret"></span></button>
                <div  id="searchprice" class="dropdiv">
	                 <form>    
		                 <label>$</label><input type="text" name="startprice" id="s_price" class="txtprice" placeholder="0" ng-model="stratPrice" ng-keypress="filterValue($event)" requried/>
		                 <label>-</label><input type="text" name="endprice" id="e_price" class="txtprice" placeholder="0" ng-model="endPrice" ng-keypress="filterValue($event)" />      
		                 <input  type="submit"  ng-click="searchProByPrice()" name="btnsubmit" id="search"  class="btn btn-primary btn-sm" value="Go!">  
	                 </from>
                </div>
                <span class="hidediv" id="hide" ng-click="clearValue()">
                	{{'$'+stratPrice}}&emsp;-&emsp;{{'$'+endPrice}}
               		 <sup><i id="close" class="fa fa-times" aria-hidden="true"></i></sup>
               	 </span>
            
   </nav>
   <!-- End nav -->
   
   
   <!-- Product -->
      <div class="container" style="margin-top:-37px;">
        <div class="page-header">
          <h3>ទំនិញស្វែងរក</h3>
        </div>
        <div class="row">
        <!-- Item -->
			    <div class="col-sm-2" ng-repeat="pro in product" style="padding: 3px;margin-top:-15px;">
			        <div class="thumbnail height-sm" >
			        	  <a href="#" class="vender"><img src ="{{pro.SOURCE.SOURCE.LOGO}}"></a>
			              <a ng-href="{{pro.URL}}" target="_blank" ng-click="addhistory(${userid}, pro.ID)">
			                <img ng-src="{{pro.IMAGE}}" alt="product alt" class="images1" style="width: 80%;">
			                <div class="caption" >
			                  <div class="title-des">
			                    <span class="price">{{'$'+ pro.PRICE}}</span> 
			                    <span><a ng-href="{{pro.URL}}" class="viewdetail">ព័ត៌មានបន្ថែម</a></span>
			                    <p style="height:40px">{{pro.TITLE | limitTo : 20}}...</p>
			                  </div>
			              </a>
			                <div class="btn-div">
			                  	<sec:authorize access="isAnonymous()">
					        		<button  class="btn btn-primary login fav" ng-click="requestLogin()">
	                            		<span class="fa fa-heart-o paddingo" style="padding:0px;" ></span>
	                            	</button>
							    </sec:authorize>
								<sec:authorize access="isAuthenticated()">
									<button  class="btn btn-primary fav" ng-click="addfavourit(${userid}, pro.ID)">
	                            		<span class="fa fa-heart-o paddingo " ></span>
	                           	 	</button>
							   </sec:authorize>
			                </div>
			              </div>
			            </div>
			      </div>
			      <div class="error" ng-bind="noresult"></div>
       <!--End Item-->
       <div class="col-sm-12 col-md-12">
            <p id="pagination-here" class="pull-right"></p>
        </div>
	</div>
 </div>
 <!-- Login Model -->
 	<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
	  <div class="modal-dialog modal-sm" role="document">
	    <div class="modal-content">
	      	<h4 class="modal-title" id="myModalLabel">Login</h4>
	      	 <form>
	          <div class="form-group">
	            <label for="recipient-name" class="control-label">Email:</label>
	            <input type="text" class="form-control" id="recipient-name">
	          </div>
	          <div class="form-group">
	            <label for="message-text" class="control-label">Password:</label>
	             <input type="password" class="form-control" id="recipient-name">
	          </div>
	        </form>
	        <div class="modal-footer">
          <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Login</button>
        </div>
	    </div>
	  </div>
	</div>
 <!--End Of Model  -->
 
 <script>
	            $(document).ready(function(){
	            		
	                    $("#open").click(function(){
	                    	$('#searchprice').toggle();
	                    });
	                    $("#search").click(function(){
	                    	var sPrice=$('#s_price').val();
		            		var ePrice=$('#e_price').val();
	                    
	                    	$('#searchprice').toggle();
	                    	if(sPrice!=0 || ePrice!=0){
		                    	$('#hide').css('display','inline');
		                    	$('#open').hide();
	                    	}else{
	                    		
	                    		$('#hide').css('display','none');
	                    		$('#open').show();
	                    	}
	                    	
	                    }); 
	                    
	                }); 
     </script>
 	<!-- Menu For Small Devices -->
    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/home-layout/menusmalldevice.jsp"></jsp:include>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/home-layout/footer.jsp"></jsp:include>
	  
	
</body>
</html>