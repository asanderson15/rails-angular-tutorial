@PostCtrl = ($scope, $routeParams, postData) ->

  $scope.data =
    postData: postData.data

  postData.loadPosts()

  $scope.data.postId = $routeParams.postId

@PostCtrl.$inject = ['$scope', '$routeParams', 'postData']