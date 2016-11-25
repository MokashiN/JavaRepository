'use strict';
 
angular.module('myApp').controller('ForumController', ['$scope', 'ForumService', '$location', function($scope, ForumService,$location) 
{
	var self = this;
    self.user={id:'',category:'',title:'',description:''};
    self.users=[];
 

    self.fetchAllForums = function (){
        ForumService.fetchAllForums()
            .then(
            function (d){
            	self.users = d;
            },
            function(errResponse){
                console.error('Error while fetching Forum');
            }
        );
    };
    
 
    self.createForum = function (user){
        ForumService.createForum(user)
            .then(
            
            	self.fetchAllForums,
            
            function(errResponse){
                console.error('Error while creating Forum');
            }
        );
    };
 
    self.updateForum = function (user, id){
        ForumService.updateForum(user, id)
            .then(
            self.fetchAllForums,
            function(errResponse){
                console.error('Error while updating Forum');
            }
        );
    };
 
  
 
    self.submit = function ()
    {
    	alert("Inside Forum Controller");
        if(self.user.id===null){
            console.log('Saving New Forum', self.user);
            createForum(self.user);
        }else{
//            updateUser(self.user, self.user.id);
//            console.log('User updated with id ', self.user.id);
        	  console.log('Saving new Forum 2', self.user);
        	  self.createForum(self.user);
        	  $location.path('/test');
 
        }
        self.reset();
    };
 
    self.reset = function ()
    {
    	self.user={id:'',category:'',title:'',description:''};
        $scope.myForm.$setPristine(); //reset Form
    }
 
}]);