angular.module('gita')
.controller('MainCtrl', [
'$scope','posts',
function($scope,posts){
	$scope.posts = [
  
];
  $scope.test = 'Hello world!';
  $scope.addPost = function(){
  if(!$scope.title || $scope.title === '') { return; }
  $scope.posts.push({
  title: $scope.title,
  link: $scope.link,
  upvotes: 0,
  comments: [
    {author: 'Joe', body: 'Cool post!', upvotes: 0},
    {author: 'Bob', body: 'Great idea but everything is wrong!', upvotes: 0}
  ]
});
  $scope.title = '';
  $scope.link = '';
};
}])