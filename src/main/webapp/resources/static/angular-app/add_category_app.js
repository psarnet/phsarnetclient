
var app = angular.module('category_app', []);

/**
*
	Category controller
*
*/
app.controller('categoryController', function($scope, $http){
	
	/**
		Get main category 
	*/
	$scope.getMainCategory = function(){
		$http.get("http://localhost:9999/rest/main-category/get-all")
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
	$scope.getMainCategory();
	
	
	/**
	 * Function add new category
	 */
	$scope.addNew = function(){

		/**
		 * Get Data from view to post as json
		 */
		var post_data = 
		{
			CATEGORY : $scope.mcategory
		}
		
		$http. post("http://localhost:9999/rest/main-category/add", post_data)
		 	 . success(function(respone){
		 		 	$scope.getMainCategory();
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
			$http. delete("http://localhost:9999/rest/main-category/delete/"+ id)
			 	 . success(function(respone){
			 		 	$scope.getMainCategory();
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
		$scope.category = list.CATEGORY;
	}
	
	/**
	 * Update main category
	 */
	$scope.updateCategory = function(){
		var conf = confirm("Are you sure want to update?");
		if(conf){
			var put_data = 
			{
				ID : $scope.id, 
				CATEGORY : $scope.category
			}
			$http. put("http://localhost:9999/rest/main-category/update", put_data)
			 	 . success(function(respone){
			 		 	$scope.getMainCategory();
			 	 	})
			 	 . error(function(status){
						console.log(status);
					});
		}
		
	}
	
	
});