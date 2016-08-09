<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <!-- Event menu for small device  -->
    <script type="text/javascript">
            $(document).ready(function(){
              $('.child').hide(); //Hide children by default
              $(".childr").hide()
              var t =true;
              $('.parent > li').click(function (e) {
                e.preventDefault();
                if(t ==true){
                  $(this).nextAll(".child:First").slideDown('slow');
                  t = false;
                }else if(t == false){
                  $(this).nextAll(".child:First").slideUp('slow');
                  t = true;
                }
              });
               $(".child:First >li").click(function(e){
                  e.preventDefault();
                  $(this).children(".childr").slideToggle('slow'); 
               });
          });
            

  </script>
<!-- Line left navbar for secondary navbar on small devices -->
    <div class="line-navbar-left" >
		<ul class="dropdown-menu parent">
			<li  class="test dropdown-submenu active">
				Product List
				<i class="fa fa-chevron-down pull-right" aria-hidden="true"></i>
				<i class="fa fa-chevron-up pull-right" aria-hidden="true" style="display:none;"></i>
			</li>
				<ul class="child">
					<li >
						Platforms
						<i class="fa fa-chevron-down pull-right" aria-hidden="true"></i>
						<ul class="childr">
							<li>Hello</li>

						</ul>
					</li>
					<li >Managed Funds</li>
				</ul>
			 
			<li  class="dropdown-submenu active">
				Product List
				<i class="fa fa-chevron-down pull-right" aria-hidden="true"></i>
			</li>
				
				<ul class="child">
					<li >Platforms</li>
				</ul>
			 
			<li  class="dropdown-submenu active">
				Product List
				<i class="fa fa-chevron-down pull-right" aria-hidden="true"></i>
				<i class="fa fa-chevron-up pull-right" aria-hidden="true" style="display:none;"></i>
			</li>
				
				
				<ul class="child">
					<li >Platforms</li>
				</ul>
		</ul>
    </div> 
    <!-- /.line-navbar-left -->