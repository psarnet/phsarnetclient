<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="line, ecommerce bootstrap shop menu">
    <meta name="keywords" content="ecommerce, shop, shopping,navbar, side navabr, menu, HTML, CSS, JS, JavaScript, dashboard, bootstrap, front-end, frontend, web development, normal, side, navbar">
    <meta name="author" content="CodBits">
    <title>P-Collection</title>
  
     <!-- nara footer -->
   		 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/footer-makeup.css" />
   	 <!-- END -->
   	 <!-- Bootstrap -->
	  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css" />
	 	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
	 <!--PRODUCT LIST SEAK STYLE -->
	 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/grid-item.css" />
	 <!-- THEARA STYLE -->
	  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/line.css" />
	  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/mystyleshopping.css" />
	  <!--OWL.CAROUSEL -->
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/owl.carousel.css" />
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/owl.theme.css" />	
	  	
	 <!-- END -->
	 <!-- Jquery -->
   		<script src="${pageContext.request.contextPath}/resources/static/javascript/plugins/jQuery/jQuery-2.2.0.min.js"></script>
    <!-- Angularjs -->
  		 <script src="${pageContext.request.contextPath}/resources/static/javascript/angularjs.js"></script>
	<!--PRODUCT AngularJS -->
	 	<script src="${pageContext.request.contextPath}/resources/static/angular-app/product.js" ></script>
	 	<script src="${pageContext.request.contextPath}/resources/static/javascript/config.js"></script>
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/indexcategorystyle.css" />
 	<!-- Sweet Alert BOx -->
 	  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/sweetalert.css" />
 	  <script src="${pageContext.request.contextPath}/resources/static/javascript/sweetalert.min.js"></script>
	<script> 
    //get value from url
    function getParameterByName(name, url) {
        if (!url) url = window.location.href;
        name = name.replace(/[\[\]]/g, "\\$&");
        var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
            results = regex.exec(url);
        if (!results) return null;
        if (!results[2]) return '';
        return decodeURIComponent(results[2].replace(/\+/g, " "));
    }
    </script>   
    
    <!-- scrolltop -->
    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/home-layout/scrolltop.jsp"></jsp:include>