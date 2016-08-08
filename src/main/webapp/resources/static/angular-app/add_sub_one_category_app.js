
var app = angular.module('category_app', []);

/**
*
	Category controller
*
*/
app.controller('categoryController', function($scope, $http){
	
	/**
	 * 
	 * Get main category lists
	 */
	$http.get("http://localhost:9999/rest/main-category/get-all")
	 .then(function(respone){
	 	$scope.mainlists = respone.data.DATA;			
	});
	
	
	/**
		Get main category 
	*/
	$scope.getCategory = function(){
		$http.get("http://localhost:9999/rest/sub-two-category/get-all")
		 .then(function(respone){
			
		 	$scope.lists = respone.data.DATA;	
		 	
		});
		/*.error(function(status){
			console.log(status);
		});*/
	};
	
	/**
	 * Call Get main category function
	 * 
	 */
	$scope.getCategory();
	
	
	/**
	 * Function add new category
	 */
	$scope.addNew = function(){
		
		/**
		 * Get Data from view to post as json
		 */
		var post_data = 
		{
			SUB_CATEGORY : $scope.sub_category,
			MAIN_CATEGORY : 
			{
				ID : $scope.main_category
			}
		}
		
		$http. post("http://localhost:9999/rest/sub-one-category/add", post_data)
		 	 . success(function(respone){
		 		 	$scope.getCategory();
		 	 	})
		 	 . error(function(status){
					console.log(status);
				});
	};
	
	/**
	 * Delete Data main category by id
	 */
	$scope.deleteByID = function(id){
		var conf = confirm("Are you sure want to delete?");
		if(conf){
			$http. delete("http://localhost:9999/rest/sub-one-category/delete/"+ id)
			 	 . success(function(respone){
			 		 	$scope.getCategory();
			 	 	})
			 	 . error(function(status){
						console.log(status);
					});
		}
		
	}
	
	/**
	 * Get data from view to update
	 */
	$scope.sendDataToUpdate = function(list){
		$scope.id = list.ID;
		$scope.category = list.SUB_CATEGORY;
	}
	
	/**
	 * Update main category
	 */
	$scope.updateCategory = function(){
		alert($scope.category);
		var conf = confirm("Are you sure want to update?");
		if(conf){
			var put_data = 
			{
				ID : $scope.id, 
				SUB_CATEGORY : $scope.category
			}
			$http. put("http://localhost:9999/rest/sub-one-category/update", put_data)
			 	 . success(function(respone){
			 		 	$scope.getCategory();
			 	 	})
			 	 . error(function(status){
						console.log(status);
					});
		}
		
	}
	
	
});