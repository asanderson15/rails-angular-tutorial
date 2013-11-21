@IndexCtrl = ($scope, $location, $http, postData) ->

  $scope.data = postData.data

  postData.loadPosts(null)

  $scope.viewPost = (postId) ->
    $location.url('/post/'+postId)

  $scope.navNewPost = ->
    $location.url('/post/new')

@IndexCtrl.$inject = ['$scope', '$location', '$http', 'postData']