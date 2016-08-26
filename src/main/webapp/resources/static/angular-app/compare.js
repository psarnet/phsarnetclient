var app=angular.module('myCompareApp',['ui.bootstrap']).controller('myCompareCtr',function($scope,$http){
	//Get Source website
	$scope.getSource=function(){
		$http({
			method:'GET',
			url:'http://192.168.178.141:8080/api/source/',
			headers:{'Authorization': 'Basic ZGV2OiFAI2FwaQ=='}
		}).then(function(response){
			$scope.source=response.data.DATA;
			console.log($scope.source+"cccccc");
		},function(res){
			console.log(res);
		});	
		
	}
	
	 //find product by title
	$scope.findProductByTitle=function(){
		
		$http({
	  		method:'GET',
	  		url:'http://192.168.178.141:8080/api/product/find-product-by-title?category_id=0&title='+$scope.proname+'&page=1&limit=200',
	  		headers: {'Authorization': 'Basic ZGV2OiFAI2FwaQ=='}
	  }).then(function(response){
	  		$scope.proData=response.data.DATA;
	  		console.log($scope.proData);
	  },function(response){
	  		console.log(response);
	  });
	 
	}
	
	//FUNCTION SEARCH TITLE
	$scope.searchTitle = function(sourceId){
		alert($scope.mcategoryId +"fdasdasdasd"+$scope.title)
		$http({
			method:'GET',
			url:'http://192.168.178.141:8080/api/product/find-product-by-title?category_id='+sourceId+'&title='+$scope.title+'&page='+paging.page+'&limit='+paging.limit,
			headers: {'Authorization': 'Basic ZGV2OiFAI2FwaQ=='}
		}).then(function(response){
			$scope.product = response.data.DATA;
			console.log($scope.product);
		},function(response){
			console.log(response+"error");
		});
	}
	
	
	//call getsource 
	$scope.getSource();
	
});