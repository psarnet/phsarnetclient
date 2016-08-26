
var app = angular.module('map_category_app', []);

/**
*
	Category controller
*
*/
app.controller('mapCategoryController', function($scope, $http){
	
	
	/*var paging = {
			id:0,
			page:1,
			limit:3
	};
	
	var TempProduct = {};
	
	var PAGINATION = $('#pagination');
	
	PAGINATION.on("page", function(event, num){
		console.log(num);	
		paging.page = num;
		TempProduct.findAll();
	});
	
	TempProduct.findAll = function(){
		$http({
			url: 'http://localhost:9999/rest/product-temperory/get-product-by-id',
			method: 'GET',
			params: paging
		}).then(function(response){
			console.log(response);
			PAGINATION.bootpag({
			    total: response.data.PAGING.TOTAL_PAGES
			});
			 $scope.getTemProduct = response.data.DATA;	
			 console.log(response.data.DATA);
		});
	}
	$scope.getTemProductBySourceId = function(id)
	{
		paging.id = id;
		TempProduct.findAll();
	}
	*/
	
	/**
	 * Call Source Object contain source-cateogry
	 */
	$http.get(URL_CLIENT+"source/get-object")
	 .then(function(respone){
		 $scope.getSource = respone.data.DATA;	
	});
	
	/**
	 * Get Data from temerory table by source id
	 */
	$scope.hideBtnSave = false;
	$scope.getTemProductBySourceId = function(id)
	{
		$scope.hideBtnSave = true;
		$http. get(URL_CLIENT+'product-temperory/get-product-by-id?id='+id)
			 . then(function(response){
				 	$scope.getTemProduct = response.data.DATA;
				 	console.log(response.data.DATA);
			 })
	}
	
	/**
	 * Get Data from Main-Category as List
	 */
	$scope.mapOneByOne = function(list){
		$scope.productObject = list;
		$http.get(URL_CLIENT+"main-category/get-main-category-object")
		 .then(function(respone){
			 $scope.getMainCategoryLists = respone.data.DATA;	
			 console.log(respone);
			 $scope.getSubCategory = [];
			 for(var i=0; i<respone.data.DATA.length; i++){
				 $scope.getSubCategory.push(respone.data.DATA[i].SUB_CATEGORY);
			 }
		});
	}
	
	/**
	 * Get sub one category in get 
	 */
	$scope.subOne = [];
	$scope.getSub = function(e){
		$scope.subOne = e.SUB_CATEGORY;
	}
	
	/**
	 * Get sub one category in get 
	 */
	$scope.subTwo = [];
	$scope.getSubOne = function(e){
		$scope.subTwo = e.SUB_TWO_CATEGORY; 
		cosole.log($scope.subTwo);
	}
	
	/**
	 * Select Sub-Two-Category-ID for add To Product
	 */
	$scope.selectSubTwoID = function(e){
		$scope.getSubTwoID = e.ID;
		
	}
	
	/**
	 * Add Product after map to the rigth category
	 */
	$scope.addProductByMapOne = function(){
		conf = confirm("Are you sure this product have been mapped to the right category?");
		if(conf)
		{
			var post_data =
			[{
				TITLE		: $scope.productObject.TITLE,
				PRICE		: $scope.productObject.PRICE,
				IMAGE		: $scope.productObject.IMAGE,
				URL			: $scope.productObject.URL,
				CATEGORY	:
				{
					ID		: $scope.getSubTwoID
				},
				SOURCE		: 
				{
					ID		: $scope.productObject.SOURCE.ID,
					SOURCE	: 
					{
						ID	: $scope.productObject.SOURCE.SOURCE.ID
					}
				}
			}]
			$http. post(URL_CLIENT+"product/add", post_data)
					
			 	 . success(function(){
			 		 	$http. put(URL_CLIENT+"product-temperory/update/source-id/"+$scope.productObject.ID)
			 		 		 . success(function(){
			 		 			 	alert("success");
			 		 			 	var index = $scope.getTemProduct.indexOf($scope.productObject);
			 		 			 	$scope.getTemProduct.splice(index, 1);
			 		 			 	
			 		 			 	/**
			 		 				 * Call Source Object contain source-cateogry
			 		 				 */
			 		 				$http.get(URL_CLIENT+"source/get-object")
			 		 				 .then(function(respone){
			 		 					 $scope.getSource = respone.data.DATA;	
			 		 				});
			 		 			 	
			 		 		 });
			 	 	})
			 	 . error(function(response){
			 		 	console.log(response);
			 	 	});
		}
		
	}
	
	/**
	 * Add Product all products had mapped 
	 */
	$scope.addDataToProduct = function(list)
	{
		var conf = confirm("Are you sure, you have check out of the products which not match in the right category?");
		if(conf)
		{
			console.log(list);
			
			$http. post(URL_CLIENT+"product/add", list)
			 	 . success(function(){
			 		 	alert("success"); 
 		 			 	$scope.getTemProduct = null;
			 		 	/**
 		 				 * Call Source Object contain source-cateogry
 		 				 */
 		 				$http.get(URL_CLIENT+"source/get-object")
 		 				 .then(function(respone){
 		 					 $scope.getSource = respone.data.DATA;	
 		 				});
			 	 	})
			 	 . error(function(response){
			 		 	console.log(response);
			 	 	});
		}
		
	}

	
});