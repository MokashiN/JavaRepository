'use strict';

app.factory('ForumService', ['$http', '$q', '$location',function($http,$q,$location){
	console.log("ForumService..")
	
	var BASE_URL='http://localhost:8051/hubback2/'
		return{
		fetchAllForums: function(){
			return $http.get(BASE_URL+'/ForumDetails/')
				.then(
						function(response){
							return response.data;
						},
						function(errResponse){
							console.error('Error while fetching ForumDetails');
							return $q.reject(errResponse);
						}
						
				);
		},
		
		createForum: function(user)
		{
			alert('inside Forum Service');
			console.log('inside Forum service with '+user)
			return $http.post(BASE_URL+'/ForumSave/', user)
			.then(
					function(response){
						return response.data;
						
					},
					function(errResponse){
						console.error('Error while creating user');
						return $q.reject(errResponse);
					}
					);
		}
	}
}])