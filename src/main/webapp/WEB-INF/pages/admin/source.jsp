<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/admin-layout/header.jsp"></jsp:include>

<aside class="right-side">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			<i class="fa fa-clone" aria-hidden="true"></i><small>Category
				Sources</small>
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
							<tr style="background-color: #4682B4; color: white;">
								<th>ID</th>
								<th class="col-md-3">Source</th>
								<th class="col-md-3">Domain</th>
								<th class="col-md-2">URL</th>
								<th class="col-md-2">Source Category</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
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
			<div class="col-xs-12">
				<button class="btn btn-primary pull-right">Clear</button>
			</div>


		</div>
	</div>

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
				<h4 class="modal-title" id="exampleModalLabel">Edit</h4>
			</div>
			<div class="modal-body">
				<form role="form" method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label>Product Name</label><input name="txtproduct" id="product"
							class="form-control" placeholder="Enter text" required />
					</div>
					<div class="form-group">
						<label>Category Name</label><input name="txtcategory" type="text"
							id="category" class="form-control" placeholder="Enter text"
							required />
					</div>
					<div class="form-group">
						<label>Domain</label><input name="txtdomain" type="text"
							id="domain" class="form-control" placeholder="Enter text"
							required />
					</div>
					<div class="form-group">
						<label>Description</label><input name="txtdescript" type="text"
							id="description" class="form-control" placeholder="Enter text"
							required />
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Send message</button>
			</div>
		</div>
	</div>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/admin-layout/footer.jsp"></jsp:include>