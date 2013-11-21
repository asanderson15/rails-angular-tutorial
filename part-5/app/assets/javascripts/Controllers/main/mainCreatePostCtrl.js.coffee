@CreatePostCtrl = ($scope, $location, postData) ->

  $scope.data = postData.data
  postData.loadPosts(null)

  $scope.formData =
    newPostTitle: ''
    newPostContents: ''

  $scope.navNewPost = ->
    $location.url('/post/new')

  $scope.navHome = ->
    $location.url('/')

  $scope.createPost = ->
    postData.createPost($scope.formData)

  $scope.clearPost = ->
    $scope.formData.newPostTitle = ''
    $scope.formData.newPostContents = ''


@CreatePostCtrl.$inject = ['$scope', '$location', 'postData']