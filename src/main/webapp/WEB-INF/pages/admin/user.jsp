<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/admin-layout/header.jsp"></jsp:include>

<div id="container" ng-app="user_app" ng-controller="userController">
<aside class="right-side">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			<i class="fa fa-user-plus" aria-hidden="true"></i><small>User</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
			<li class="active">Dashboard</li>
		</ol>
	</section>
	<!-- table -->
	<div class="panel-body">
		<div class="dataTable_wrapper">
			<div class="row">
				<div class="col-xs-12 table-responsive">
					<table class="table table-bordered  table-hover">
						<thead>
							<tr>
								<th colspan="12">
									<div class="row">
										<div class="col-md-3 pull-left">
											<button type="button" class="btn btn-info btn-sm pull-left"
												data-toggle="modal" data-target="#exampleModal"
												data-whatever="@mdo">
												<i class="glyphicon glyphicon-plus"></i>New
											</button>
										</div>

										<div class="col-md-4 pull-right">
											<form class="navbar-form" role="search">
												<div class="pull-right" style="margin-top: -8px;">
													<div class="input-group">
														<div class="input-group-btn">
															<input type="text" class="form-control"
																placeholder="Search" name="srch-normal" id="search">
														</div>
														<div class="input-group-btn">
															<button class="btn btn-default search"
																style="height: 34px;" type="submit" name="btnSearch">
																<span class="fa fa-search"></span>
															</button>
														</div>
													</div>
												</div>
											</form>
										</div>
							</tr>
						</thead>
						</div>
						<thead>
							<tr style="background-color: #4682B4; color: white;">
								<th>ID</th>
								<th class="col-md-3">UserName</th>
								<th class="col-md-3">Description</th>
								<th class="col-md-3">Role</th>
								<th class="col-md-2">Action</th>
							</tr>

						</thead>
						<tbody>
							<tr ng-repeat="list in lists">
								
								<td>{{list.ID}}</td>
								<td>{{list.USERNAME}}</td>
								<td>{{list.DESCRIPTION}}</td>
								<td>{{list.ROLE}}</td>
								<td>
									<button type="button" class="btn btn-info btn-sm"
										data-toggle="modal" data-target="#exampleModalEdit"
										data-whatever="@mdo">Edit</button>
									<button type="button" class="btn btn-danger btn-sm" ng-click="deleteByID(list.ID)">Delete</button>
								</td>
							</tr>

						</tbody>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="row no-print">
					<div class="col-xs-12">
						<button class="btn btn-primary pull-right"
							onClick="window.print();">
							<i class="fa fa-print"></i> Print
						</button>
					</div>
				</div>

			</div>
		</div>
</aside>
<!-- AddNew Modal-->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="exampleModalLabel">New</h4>
				<div class="modal-body">
					<form>
					
						<div class="form-group">
							<label>UserName</label>
							<input name="username" type="text" ng-model="username" class="form-control" placeholder="Enter username" required />
						</div>
						
						<div class="form-group">
							<label>Password</label>
							<input name="password" type="password" ng-model="password" class="form-control" placeholder="Enter Password"
								required />
						</div>
						
						<div class="form-group">
							<label>Description</label>
							<textarea class="form-control" name="description" ng-model="description" id="editor1" rows="3"></textarea>
						</div>
						
						<div class="modal-footer">
							<a href="">
								<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							</a> <a href="">
								<button type="button" class="btn btn-primary" data-dismiss="modal" name="btnSave" ng-click="addNew()">Save</button>
							</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
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
				<h4 class="modal-title" id="exampleModalLabel">Edit</h4>
				<div class="modal-body">
					<form role="form" method="post" enctype="multipart/form-data">
						<div class="form-group">
							<label>UserName</label><input name="txtUsername" id="username"
								class="form-control" placeholder="Enter text" required />
						</div>
						<div class="form-group">
							<label>Sex</label> <select class="form-control" id="sex">
								<option>M</option>
								<option>F</option>
							</select>
						</div>
						<div class="form-group">
							<label>Password</label><input name="txtPassword" type="password"
								id="password" class="form-control" placeholder="Enter Password"
								required />
						</div>
						<div class="form-group">
							<label>Description</label>
							<textarea class="form-control" name="txtDescript" id="editor1"
								rows="3"></textarea>
						</div>
						<div class="modal-footer">

							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary" name="btnUpdate">Save</button>
							
						</div>
				</div>
				
				</form>
			</div>
		</div>
	</div>
</div>

	

	<script src="${pageContext.request.contextPath}/resources/static/angular-app/user_app.js"></script>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/admin-layout/footer.jsp"></jsp:include>