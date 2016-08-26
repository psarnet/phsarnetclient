var app = angular.module('myindexApp', [ 'ui.bootstrap' ]);
		app.controller(
				'myindexCtr',
				function($scope, $http) {
					$scope.pro1 = [];
					$scope.pro2 = [];
					$scope.proWebsitelength=[];
					$scope.lastProductLength = [];
					$scope.websiteId='';
					$scope.sourceId;
					$scope.mcategoryId=0;
					$http.defaults.headers.common.Authorization = 'Basic ZGV2OiFAI2FwaQ==' ;
					$scope.articles = [];

					//Get Source website
					$scope.getSource=function(){
						$http({
							method:'GET',
							url:'http://192.168.178.141:8080/api/source/'
						}).then(function(response){
							
							$scope.source=response.data.DATA;
							$scope.sourceId=4;//$scope.source[0].ID;
							
							$scope.getProbyWebsite();
						},function(res){
							console.log(res);
						});			
					}
					
					// get lastest product all
					$scope.getLastPro = function() {
						$http(
								{
									method : 'GET',
									url : 'http://192.168.178.141:8080/api/product/get-all-products?page=1&limit=40'
								}).then(function(response) {
								$scope.lastpro = response.data.DATA;
								console.log($scope.lastpro.length+"ccvvv");
								console.log($scope.lastpro+"getallproduct");
								for(var i=0; i<($scope.lastpro.length)/2; i++)
									$scope.lastProductLength.push(i);
							}, function(response) {
								console.log(response);
							});
					}
					
					//get lastest product by website		
					$scope.getProbyWebsite=function(){
						$http({
							method:'GET',
							url:'http://192.168.178.141:8080/api/product/find-product-by-website?sourceid='+$scope.sourceId+'&page=1&limit=40'
						}).then(function(response){
							
							$scope.proWebsite=response.data.DATA;
							console.log($scope.proWebsite+"result");
							console.log($scope.proWebsite.length);
							if($scope.proWebsite!=null){
								for(var i=0; i<($scope.proWebsite.length)/2; i++)
									$scope.proWebsitelength.push(i);
							}
							else{
								//$scope.proWebsitelength=[];
								$scope.proWebsite=null;
								console.log($scope.proWebsitelength);
							}
						},function(response){
							console.log(response);
						});
					}
					
					// FILTER LASTEST PRODUCT BY WEBSITE 
					$scope.getSourceId = function(e) {
						$scope.sourceId=e.target.attributes[2].value;
						$scope.getProbyWebsite($scope.sourceId);
						
						console.log(e);
					}
					
					// get Main Category
					$scope.getmainCategory = function() {
						$http(
								{
									method : 'GET',
									url : 'http://192.168.178.141:8080/api/main-category/get-sub-category-list/'
								}).then(function(response) {
									$scope.maincategory = response.data.DATA;
								}, function() {
									console.log(response);
								});
					}

					// find product by title
					$scope.findProductByTitle = function() {
						
						/*$scope.title=null;*/
						/*alert($scope.title);*/
						$http(
								{
									method : 'GET',
									url:'http://192.168.178.141:8080/api/product/find-product-by-title?category_id='+$scope.mcategoryId+'&title='+$scope.title+'&page=1&limit=200'
								}).then(function(response) {
									$scope.proSearch = response.data.DATA;
									console.log($scope.proSearch+"EHllo");
								}, function(response) {
									console.log(response);
								});

					}
					
				
					
					//FUNCTION SEARCH TITLE LINK To PRODUCT PAGE
					$scope.searchTitle=function(){
						if($scope.title!=null){
							location.href = '/home/product?category_id='+$scope.mcategoryId+'&title='+$scope.title;
						}
						
					}
					/*
					 * -------------------------------------------------------------------------------------
					 */
					 /* =======================================
						 * For Display in List Favorite 5 Product
						 * =======================================
						 */
						$scope.getwishlistlist = function(userid){
							$http({
							
								method:'GET',
								url:'http://192.168.178.141:8080/api/farvorite?usreid='+userid+'&page=1&limit=5',
								headers:{'Authorization': 'Basic ZGV2OiFAI2FwaQ=='}
							
							}).then(function(response){
								
								$scope.favlist=response.data.DATA;
								console.log($scope.favs);
								
							},function(res){
								//console.log(res);
							});	
						}
						
						
						/*
						 * =======================================
						 * for total number of favorites
						 * =======================================
						 */
						
						$scope.getwishlist = function(userid){
							
							$http({
							
								method:'GET',
								url:'http://192.168.178.141:8080/api/farvorite?usreid='+userid+'&page=1&limit=10000',
								headers:{'Authorization': 'Basic ZGV2OiFAI2FwaQ=='}
							
							}).then(function(response){
								
								$scope.favs=response.data.DATA;
								console.log($scope.favs);
								$scope.getwishlistlist(userid);
								
							},function(res){
								//console.log(res);
							});	
						}
						
						/*
						 * ==================================
						 * Objective : Remove FAVOURITES
						 * ================================== 
						 */
						$scope.unfavourit=function(fav){
							
							$http({
								
								method:'DELETE',
								url:'http://192.168.178.141:8080/api/farvorite/'+ fav.USER.ID + '/' + fav.ID,
								headers:{'Authorization': 'Basic ZGV2OiFAI2FwaQ=='}
							
							}).then(function(response){
									$scope.getwishlist(fav.USER.ID);
								
							},function(res){
								//console.log(res);
							});	
						}
					
					
					/*
					 * -------------------------------------------------------------------------------------
					 */
					
					
					
					/*
					 * =========================================
					 * On : Add FAV
					 * Status: true (100% work)
					 * =========================================
					 */
					$scope.addfavourit = function(userid, productid){
							$http({
							method:'POST',
							data:
							{
								PRODUCT: { ID: productid },
								USER : {   ID: userid  }
									  
							},	
							url:'http://192.168.178.141:8080/api/farvorite/add-new',
							
						}).then(function(response){
							$scope.getwishlist(userid);
							console.log(response+"|weeoeo");	
						});	
					}

					
					
					/*
					 * =========================================
					 * Objective : Add HISTORY
					 * Status    : true (100%)
					 * Function  : add history when user clicked
					 * =========================================
					 */
					$scope.addhistory = function(userid, productid){
						$http({
							method:'POST',
							data:
							{
								PRODUCT: { ID: productid },
								USER : {   ID: userid }
								
							},	
							url:'http://192.168.178.141:8080/api/history/',
						}).then(function(response){
							
							console.log(response);
									
						});	
					}
					
					//sugesstion request logic
					
					$scope.requestLogin=function(){
						swal({
							  title: "Please Login!!!",
							  type: "info",
							  showCancelButton: true,
							  closeOnConfirm: true,
							  showLoaderOnConfirm: true
							}, function () {
							 location.href = 'http://120.136.24.174:13300/login?continue-site=http://192.168.178.141:9999';
						});
					}
					$scope.getSource();
					// call get lastest product'
					$scope.getLastPro();
					// call get main category
					$scope.getmainCategory();
					//call get product by website
					//$scope.getProbyWebsite();
					//call find product by title
					//$scope.findProductByTitle();
					//call get source website
					
					

				}).directive(
					"owlCarousel",
					function() {
						return {
							restrict : 'E',
							transclude : false,
							link : function(scope) {
								scope.initCarousel = function(element) {
									// provide any default options you want
									var defaultOptions = {};
									var customOptions = scope.$eval($(element)
											.attr('data-options'));
									// combine the two options objects
									for ( var key in customOptions) {
										defaultOptions[key] = customOptions[key];
									}
									// init carousel
									$(element).owlCarousel(defaultOptions);
								};
							}
						};
					}).directive('owlCarouselItem', [ function() {
				return {
					restrict : 'A',
					transclude : false,
					link : function(scope, element) {
						// wait for the last item in the ng-repeat then call init
						if (scope.$last) {
							scope.initCarousel(element.parent());
						}
					}
				};
		}]
	);
	
