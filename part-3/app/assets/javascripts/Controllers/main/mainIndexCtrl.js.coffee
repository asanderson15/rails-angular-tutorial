@IndexCtrl = ($scope, $location, $http) ->

  $scope.data = 
    posts: [{title: 'Loading posts...', contents: ''}]

  loadPosts = ->
    $http.get('./posts.json').success( (data) ->
      $scope.data.posts = data
      console.log('Successfully loaded posts.')
    ).error( ->
      console.error('Failed to load posts.')
    )

  loadPosts()

  $scope.viewPost = (postId) ->
    $location.url('/post/'+postId)