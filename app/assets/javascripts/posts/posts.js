angular.module('gita')
.factory('posts',[function(){
	  var o = {
    posts: ['post 1',
  'post 2',
  'post 3',
  'post 4',
  'post 5']
  };
  return o;
}])