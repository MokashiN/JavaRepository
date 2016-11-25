//angular.module("chatApp.controllers").controller("ChatController", function($scope, ChatService)
//angular.module("chatApp.ChatController").controller("ChatController", function($scope, ChatService)
//angular.module('myApp').controller("ChatController", function($scope, ChatService,$location)
angular.module('myApp').controller('ChatController', function($scope, ChatService,$location)
 {
 console.log("ChatController.js....")
  $scope.message="";  
  $scope.messages = [];
  $scope.max = 140;
  $scope.today = new Date();

   
  $scope.addMessage = function()
 // function addMessage()
  {
	console.log("Before send() in chat Constroller ");
	console.log('$$$ '+ $scope.message)
    ChatService.send($scope.message);
	console.log("After send() in chat Constroller ");
    $scope.message = "";
  };

  ChatService.receive().then(null, null, function(message)
   {
	$scope.messages.push(message);
	console.log('receive '+message);
  });
});


