var app = angular.module("myApp", ["ngRoute"]);
app.config(function($routeProvider) {
    $routeProvider
    .when("/", {
        templateUrl : "main.html",
    })
    .when("/reg", {
        templateUrl : "Register.html",
        controller : "UserController"
    })
    .when("/Chat", {
        templateUrl : "ChatView.html",
        controller : "ChatController"
    })
    .when("/Forum", {
        templateUrl : "Forum.html",
        controller : "ForumController"
    })
    .when("/Blog", {
        templateUrl : "BlogAdd.html",
        controller : "BlogController"
    })
    .when("/log", {
        templateUrl : "LoginPage.html",
        controller : "LoginController"
    })
    
});