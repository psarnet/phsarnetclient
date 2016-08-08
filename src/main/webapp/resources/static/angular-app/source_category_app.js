
var app = angular.module('source_app', []);

/**
*
	Category controller
*
*/
app.controller('sourceController', function($scope, $http){
	
	/**
	 * Call main source api
	 */
	$http.get("http://localhost:9999/rest/source/get-all")
	 .then(function(respone){
		
	 	$scope.mainlists = respone.data.DATA;	
	 	
	});
	
	/**-
		Get Source 
	*/
	$scope.getSource = function(){
		$http.get("http://localhost:9999/rest/source-category/get-all")
		 .then(function(respone){
			
		 	$scope.lists = respone.data.DATA;	
		 	console.log(respone.data.DATA);
		 	
		});
	};
	
	
	/**
	 * Call source function
	 * 
	 */
	$scope.getSource();
	
	
	/**
	 * Function add source
	 */
	$scope.addNew = function(){
		
		/**
		 * Get Data from view to post as json
		 */
		var post_data = 
		{
			SOURCE_CATEGORY : $scope.source_category,
			STATUS 			: $scope.status,
			SOURCE			: 
			{
				ID			: $scope.main_source_id
			}
			
		}
		$http. post("http://localhost:9999/rest/source-category/add", post_data)
		 	 . success(function(respone){
		 		 	$scope.getSource();
		 	 	})
		 	 . error(function(status){
					console.log(status);
				});
	};
	
	/**
	 * Delete Data source by id
	 */
	$scope.deleteByID = function(id){
		
		var conf = confirm("Are you sure want to delete?");
		if(conf){
			$http. delete("http://localhost:9999/rest/source-category/delete/"+ id)
			 	 . success(function(respone){
			 		 	$scope.getSource()();
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
		
		$scope.nid = list.ID;
		$scope.nsource_category = list.SOURCE_CATEGORY,
		$scope.nstatus = list.STATUS;
			
		
	}
	
	/**
	 * Update source
	 */
	$scope.updateCategory = function(){
		
		var conf = confirm("Are you sure want to update?");
		if(conf){
			var put_data = 
			{
				ID 					: $scope.nid,
				SOURCE_CATEGORY		: $scope.nsource_category,
				STATUS				: $scope.nstatus
					
			}
			$http. put("http://localhost:9999/rest/source-category/update", put_data)
			 	 . success(function(respone){
			 		 	$scope.getSource()();
			 	 	})
			 	 . error(function(status){
						console.log(status);
					});
		}
		
	}
	
	
});