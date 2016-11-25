'use strict';

app.factory('BlogService', ['$http', '$q', '$location',function($http,$q,$location){
	console.log("BlogService..")
	
	var BASE_URL='http://localhost:8051/hubback2/'
		return{
		fetchAllBlogs: function(){
			return $http.get(BASE_URL+'/BlogDetails/')
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
		
		createBlog: function(user)
		{
			alert('inside Blog Service.jsp');
			console.log('inside blog service with '+user)
			return $http.post(BASE_URL+'/BlogSave/', user)
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