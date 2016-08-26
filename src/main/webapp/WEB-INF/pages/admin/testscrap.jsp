<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/admin-layout/header.jsp"></jsp:include>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="container" >
<aside class="right-side">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			<i class="fa fa-refresh" aria-hidden="true"></i>
			<small>Test Scraping data...</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
			<li class="active">Dashboard</li>
		</ol>
	</section>
	<!-- form start here -->
	<div class="testscrap-form" style="margin-left:20px;margin-top:20px;">
		<form class="form-inline" action="testscrap" method="POST">
		  <div class="form-group">
		    <label for="Url">Category-URL</label>
		    <br/>
		    <input type="text" class="form-control" id="test-url" name="url" placeholder="url...">
		  </div>
		  <div class="form-group">
		    <label for="Row">Row-Selector</label>
		    <br/>
		    <input type="text" class="form-control" id="test-row" name="rowselector" placeholder="row selector">
		  </div>
		  <div class="form-group">
		    <label for="Image">Image-Selector</label>
		    <br/>
		    <input type="text" class="form-control" id="test-image" name="imageselector" placeholder="image selector">
		  </div>
		  <div class="form-group">
		    <label for="Image-Attribute">Image-Attribute</label>
		    <br/>
		    <input type="text" class="form-control" id="image-attribute" name="imageattribute" placeholder="image attribute">
		  </div>
		  <div class="form-group">
		    <label for="Link">Link-Selector</label>
		    <br/>
		    <input type="text" class="form-control" id="test-link" name="linkselector" placeholder="link selector">
		  </div>
		  <div class="form-group">
		    <label for="Title">Title-Selector</label>
		    <br/>
		    <input type="text" class="form-control" id="test-title" name="titleselector" placeholder="title selector">
		  </div>
		  <div class="form-group">
		    <label for="Price">Price-Select</label>
		    <br/>
		    <input type="text" class="form-control" id="test-price" name="priceselector" placeholder="price selector">
		  </div>
		  <button type="submit" class="btn btn-primary" style="margin-top:25px;">Scrape</button>
		</form>
	<!-- form end -->
	</div><!-- testscrap-form -->
	<!-- test scrap table -->
	<div class="panel-body">
		<div class="dataTable_wrapper">
			<div class="row">
				<div class="col-xs-12 table-responsive">
					<table class="table table-bordered  table-hover">
						<thead>
							<tr style="background-color: #4682B4; color: white;">
								<th>Title</th>
								<th>Image</th>
								<th>Price</th>
								<th>Link</th>
							</tr>
						</thead>
						<tbody>
						 <c:forEach items="${model.productlist}" var="element">
							<tr>
								<td><c:out value="${element.title}" /></td>
								<td><c:out value="${element.image}" /></td>
								<td><c:out value="${element.price}" /></td>
								<td><c:out value="${element.url}" /></td>
							</tr>
						 </c:forEach>	
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- end test scrap table -->
<script type="text/javascript">
		var userName = document.getElementById("username");
		var sex = document.getElementById("sex");
		var pwd = document.getElementById("password");
		var description = document.getElementById("Descrpiton");
		function getElement(getuserName, getsex, getPassword, getDescription) {
			$('.bs-example-modal-sm').modal('show');
			userName.value = getuserName;
			sex.value = getsex;
			pwd.value = getPassword;
			description.value = getDescription;
		}
</script>
</aside>
</div>
<!--Modal Edit-->
<div class="modal fade" id="exampleModalEdit" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="exampleModalLabel">Add</h4>
			</div>
			<div class="modal-body">
				<form>
					<div class="form-group">
						<label>Main Category</label> 
						<select class="form-control" name="mcategory" ng-model="mcategory" ng-change="change()">
							<option value="">Main Category</option>
							<option value="">1</option>
						</select>
					</div>
					<div class="form-group">
						<label>Sub One Category</label> 
						<select class="form-control" name="onecategory" ng-model="onecategory">
							<option value="">Sub Category1</option>
						</select>
					</div>
					<div class="form-group">
						<label>Sub Two Category</label> 
						<select class="form-control" name="twocategory" ng-model="twocategory">
							<option value="">Sub Category1</option>
						</select>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/resources/static/angular-app/map_category.js"></script>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/admin-layout/footer.jsp"></jsp:include>