
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myCompareApp">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/home-layout/header.jsp"></jsp:include>
	<title>Shopping Mall</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/comparestyle.css" /> 
	 <!--About Angular  -->
	 	<script src="${pageContext.request.contextPath}/resources/static/angular-app/compare.js" ></script>
	  <!--DROP RESULT BOX--> 
	<script type="text/ng-template" id="customTemp.html">
	 	<a>
	     	<span bind-html-unsafe="match.label | typeaheadHighlight:query"></span>
	      		 
	    </a>
	</script>
	
</head>
<body ng-controller="myCompareCtr" >
		<!-- INCLUDE WEB HEADER -->
		<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/home-layout/webheader.jsp"></jsp:include>
		<!-- END -->
	   <div class="container">
	   	  <div class="row">
		  <h3>Tilte Product</h3>
		  <hr>
		  <div class="col-sm-3" style="border:1px solid black;">
		  
		  dfdf
		  </div>
		  <div class="col-sm-9" style="border:1px solid black;">
		  fgdf
		  
		  </div>
		  </div>
	   </div>
	     
	      
   <!-- Footer -->
    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/home-layout/menusmalldevice.jsp"></jsp:include>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/home-layout/footer.jsp"></jsp:include>
	<style>
		.navbar-static-top{
			border-bottom: 1px solid #eee;
		}
	</style>
</body>
</html>