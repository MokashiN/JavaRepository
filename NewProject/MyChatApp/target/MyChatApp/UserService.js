'use strict';

app.factory('UserService', ['$http', '$q', '$location',function($http,$q,$location){
	console.log("UserService..")
	
	var BASE_URL='http://localhost:8051/hubback2'
		return{
		fetchAllUsers: function(){
			return $http.get(BASE_URL+'/UserDetails/')
				.then(
						function(response){
							return response.data;
						},
						function(errResponse){
							console.error('Error while fetching UserDetails');
							return $q.reject(errResponse);
						}
						
				);
		},
		
		createUser: function(user)
		{
			alert('inside USerService.js');
			return $http.post(BASE_URL+'/UserSave/', user)
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