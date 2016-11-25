'use strict';
 
angular.module('myApp').controller('BlogController', ['$scope', 'BlogService', '$location', function($scope, BlogService,$location) 
{
	var self = this;
    self.user={id:'',title:'',description:''};
    self.users=[];
 

    self.fetchAllBlogs = function (){
        BlogService.fetchAllUsers()
            .then(
            function (d){
            	self.users = d;
            },
            function(errResponse){
                console.error('Error while fetching User');
            }
        );
    };
    
 
    self.createBlog = function (user){
        BlogService.createBlog(user)
            .then(
            
            	self.fetchAllUsers,
            
            function(errResponse){
                console.error('Error while creating User');
            }
        );
    };
 
    self.updateBlog = function (user, id){
        BlogService.updateBlog (user, id)
            .then(
            self.fetchAllUsers,
            function(errResponse){
                console.error('Error while updating User');
            }
        );
    };
 
  
 
    self.submit = function ()
    {
    	alert("Inside Blog Controller");
        if(self.user.id===null){
            console.log('Saving New Blog', self.user);
            createBlog(self.user);
        }else{
//            updateUser(self.user, self.user.id);
//            console.log('User updated with id ', self.user.id);
        	  console.log('Saving new blog 2', self.user);
        	  self.createBlog(self.user);
        	  $location.path('/test');
 
        }
        self.reset();
    };
 
    self.reset = function ()
    {
    	self.user={id:'',title:'',description:''};
        $scope.myForm.$setPristine(); //reset Form
    }
 
}]);