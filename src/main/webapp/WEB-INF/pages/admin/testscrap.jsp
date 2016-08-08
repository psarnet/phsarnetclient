
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TestScrap</title>
<%@ include file="header.jsp" %>
</head>

<body class="skin-blue">
	<div class="wrapper">
		<%@ include file="nav.jsp" %>
		<%@ include file="menu.jsp" %>
        <aside class="right-side">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                    	 <i class="fa fa-tags" aria-hidden="true"></i><small>Test Scrapping Data</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                        <li class="active">Dashboard</li>
                    </ol>
                </section>
				 <!-- Test Modal-->			
					<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
					  <div class="modal-dialog" role="document">
						<div class="modal-content">
						  <div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="exampleModalLabel">Test </h4>
							<div class="modal-body">
									<form role="form" method="post" enctype="multipart/form-data">
									<div class="form-group">
										<label>URL Scrapping</label><input name="txtUsername" id="username" class="form-control" placeholder="Enter text" required />
									</div>
									<div class="form-group">
										<label>Name Selector</label><input name="txtPassword" type="password" id="password" class="form-control" placeholder="Enter Password" required />
									</div>
									<div class="form-group">
										<label>Price Selector</label><input name="txtPassword" type="password" id="password" class="form-control" placeholder="Enter Password" required />
									</div>
									<div class="form-group">
										<label>Image Selector</label><input name="txtPassword" type="password" id="password" class="form-control" placeholder="Enter Password" required />
									</div>
									<div class="form-group">
										<label>URl Selector</label><input name="txtPassword" type="password" id="password" class="form-control" placeholder="Enter Password" required />
									</div>
									
							</div>
							<div class="modal-footer">
									<a href="">
									<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									</a>
									<a href="">
									<button type="submit" class="btn btn-primary" name="btnSave">Test</button>
									</a>
								  </div>
								</div>
							  </div>
							</div>
						</form>
						 </div>
						
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
													<button type="button" class="btn btn-primary pull-left" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"><i class="glyphicon glyphicon-plus"></i>Testing</button>
												</div>
													
													
											</thead>
												
										<thead>
										<tr style="background-color:#4682B4; color:white;">
											<th >ID</th>
											<th class="col-md-3">Name</th>
											<th class="col-md-2">Price</th>
											<th class="col-md-3">Images</th>
											<th class="col-md-2">URL</th>
										</tr>
									   
										</thead>
										<tbody>
											<tr>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
										</tbody>
								</table>
							</div>
						</div>
						
						<div class="col-xs-12">
								<button class="btn btn-primary pull-right" > Clear</button> 
						</div>
					
						
					</div>
					</div>
					<script type="text/javascript">
					var userName=document.getElementById("username");
					var sex=document.getElementById("sex");
					var pwd=document.getElementById("password");
					var description=document.getElementById("Descrpiton");
					function getElement(getuserName,getsex,getPassword,getDescription){
						$('.bs-example-modal-sm').modal('show');
							userName.value=getuserName;
							sex.value=getsex;
							pwd.value=getPassword;
							description.value=getDescription;
					}
				
					</script>
            </aside>    
        </div>
		 

<%@ include file="footer.jsp" %>
</body>
</html>