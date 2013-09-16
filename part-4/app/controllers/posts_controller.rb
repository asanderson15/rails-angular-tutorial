class PostsController < ApplicationController
  respond_to :json

  def index

    # Gather all post data
    posts = Post.all

    # Respond to request with post data in json format
    respond_with(posts) do |format|
      format.json { render :json => posts.as_json }
    end

  end

end
