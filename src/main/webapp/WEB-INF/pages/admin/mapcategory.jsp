<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/admin-layout/header.jsp"></jsp:include>

<div id="container" ng-app="map_category_app" ng-controller="mapCategoryController">
<aside class="right-side">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			<i class="fa fa-bars" aria-hidden="true"></i> 
			<small>Mapping Category</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
			<li class="active">Dashboard</li>
		</ol>
	</section>

	<!-- table -->
	<div class="panel-body">
		<div class="row">
			<div class="col-lg-3">
				<div class="dataTable_wrapper">
					<h3>Website</h3>
					<ul class="list-group" ng-repeat="list in getSource">
					  <li class="list-group-item">
							{{list.DOMAIN}} 
							<ul ng-repeat="listsub in list.SOURCE_CATEGORY">
								<li>
									<a href="#" ng-click="getTemProductBySourceId(listsub.ID)">{{listsub.SOURCE_CATEGORY}}</a>
									<span class="badge bg-green">6</span>
								</li>
							</ul>
					  </li>
					</ul> 
					
					<!-- <ul class="list-group">
					  <li class="list-group-item">
							www.khmer24.com
							<ul>
								<li>
									<a href="#" ng-click="getTemProductBySourceId(listsub.ID)">/khmer24/category1</a>
									<span class="badge bg-green">10</span>
								</li>
								<li>
									<a href="#" ng-click="getTemProductBySourceId(listsub.ID)">/khmer24/category2</a>
									<span class="badge bg-green">5</span>
								</li>
								<li>
									<a href="#" ng-click="getTemProductBySourceId(listsub.ID)">/khmer24/category3</a>
									<span class="badge bg-green">30</span>
								</li>
							</ul>
							
					  </li>
					</ul>
					<ul class="list-group">
						<li class="list-group-item">
							www.khbuy.com
							<ul>
								<li>
									<a href="#" ng-click="getTemProductBySourceId(listsub.ID)">/khbuy/category1</a>
									<span class="badge bg-green">5</span>
								</li>
								<li>
									<a href="#" ng-click="getTemProductBySourceId(listsub.ID)">/khbuy/category2</a>
									<span class="badge bg-green">10</span>
								</li>
								<li>
									<a href="#" ng-click="getTemProductBySourceId(listsub.ID)">/khbuy/category3</a>
									<span class="badge bg-green">20</span>
								</li>
								<li>
									<a href="#" ng-click="getTemProductBySourceId(listsub.ID)">/khbuy/category4</a>
									<span class="badge bg-green">20</span>
								</li>
							</ul>
					  </li>
					</ul>
					<ul class="list-group">
						<li class="list-group-item">
							www.kaymu.com
						</li>
					</ul> -->
				</div>
			</div>
			<div class="col-lg-9 jumbo">
				<div class="dataTable_wrapper">
					<h3>Temperory Data...</h3>
					<div class="row" style="background-color:white; border-radius: 5px;">
						<div class="col-xs-12">
							<form>
							<table class="table">
								<thead>
									<tr>
										<th>No</th>
										<th class="col-md-2">ProductName</th>
										<th class="col-md-2">Price</th>
										<th class="col-md-3">Images</th>
										<th class="col-md-3">URL</th>
										<th class="col-md-3">Action</th>
									</tr>
								</thead>
								<tbody>
									<tr style="border-button: 2px solid gray;">
										<td>1</td>
										<td>item</td>
										<td>Price</td>
										<td>/link/img.png</td>
										<td>/item/url</td>
										
										<td> 
											<button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Check Out">
												<i class="fa fa-times" aria-hidden="true"></i>
											</button>
										</td>
									</tr>
									<tr style="border-button: 2px solid gray;" id="tr">
										<td>2</td>
										<td>item</td>
										<td>price</td>
										<td>/linkg/img.png</td>
										<td>/item/url</td>
										
										<td> 
											<button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Check Out" ng-click="checkOut()">
												<i class="fa fa-times" aria-hidden="true"></i>
											</button>
											<!-- <button type="button" class="btn btn-default btn-sm map"
												data-toggle="modal" data-target="#exampleModalEdit"
												data-whatever="@mdo">Mapping
											</button> -->
										</td>
									</tr>
									<tr>
										<td>
											<button type="button" class="btn btn-default btn-sm map"
												data-toggle="modal" data-target="#exampleModalEdit"
												data-whatever="@mdo" ng-click="addDataToProduct(list)">Map To Category
											</button>
										</td>
										<td>
											<button type="button" class="btn btn-default btn-sm map"
												data-toggle="modal" data-target="#exampleModalEdit"
												data-whatever="@mdo" ng-click="addDataToProduct(list)">Map To Category
											</button>
										</td>
									</tr>
								</tbody>
							</table>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</div>
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