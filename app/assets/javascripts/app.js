angular.module('gita', [])
.controller('MainCtrl', [
'$scope',
function($scope){
  $scope.test = 'Hello world!';
}]);