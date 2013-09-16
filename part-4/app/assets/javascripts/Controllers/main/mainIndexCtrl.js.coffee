@IndexCtrl = ($scope, $location, $http, postData) ->

  $scope.data = postData.data

  postData.loadPosts()

  $scope.viewPost = (postId) ->
    $location.url('/post/'+postId)

@PostCtrl.$inject = ['$scope', '$location', '$http', 'postData']