<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/admin-layout/header.jsp"></jsp:include>

<aside class="right-side">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			<i class="fa fa-bars" aria-hidden="true"></i> <small>Mapping
				Category</small>
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
								<th>No</th>
								<th class="col-md-3">CategoryName</th>
								<th class="col-md-2">ProductName</th>
								<th class="col-md-3">Images</th>
								<th class="col-md-3">Action</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<button type="button" class="btn btn-default">
										<i class="fa fa-times" aria-hidden="true"></i>
									</button>
									<button type="button" class="btn btn-default btn-sm map"
										data-toggle="modal" data-target="#exampleModalEdit"
										data-whatever="@mdo">Mapping</button>
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
				<h4 class="modal-title" id="exampleModalLabel">Edit</h4>
			</div>
			<div class="modal-body">
				<form role="form" method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label>Main Category</label> <select class="form-control" id="sex">
							<option>Main Category</option>
						</select>
					</div>
					<div class="form-group">
						<label>Type Category</label> <select class="form-control" id="sex">
							<option>Sub Category1</option>
							<option>Sub Category2</option>
						</select>
					</div>
					<div class="form-group">
						<label>Description</label>
						<textarea class="form-control" name="txtDescript" id="editor1"
							rows="3"></textarea>
					</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Send message</button>
			</div>
		</div>
	</div>



	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/page-layout/admin-layout/footer.jsp"></jsp:include>