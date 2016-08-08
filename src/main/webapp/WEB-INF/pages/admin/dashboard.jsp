
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/admin-layout/header.jsp"></jsp:include>

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
								<th>No</th>
								<th>ID</th>
								<th class="col-md-3">UserName</th>
								<th class="col-md-2">Password</th>
								<th class="col-md-3">Description</th>
								<th class="col-md-2">Action</th>
							</tr>

						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>18797236</td>
								<td>{{name}}</td>
								<td>Admin</td>
								<td></td>
								<td>
									<button type="button" class="btn btn-info btn-sm"
										data-toggle="modal" data-target="#exampleModalEdit"
										data-whatever="@mdo">Edit</button>
									<button type="button" class="btn btn-danger btn-sm">Delete</button>
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
</div>
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
					<form role="form" method="post" enctype="multipart/form-data">
						<div class="form-group">
							<label>UserName</label><input name="txtUsername" id="username"
								class="form-control" placeholder="Enter text" required />
						</div>
						<div class="form-group">
							<label>Sex</label> <select class="form-control">
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
				</div>
				<div class="modal-footer">
					<a href="">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</a> <a href="">
						<button type="submit" class="btn btn-primary" name="btnSave">Save</button>
					</a>
				</div>
			</div>
		</div>
	</div>
	</form>
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
				</div>
				<div class="modal-footer">

					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary" name="btnUpdate">Save</button>
					</a>
				</div>
			</div>
		</div>
	</div>
	</form>
	
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/admin-layout/footer.jsp"></jsp:include>

