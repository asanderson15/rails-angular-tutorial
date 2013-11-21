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

  def create

    # Create and save new post from data received from the client
    new_post = Post.new
    new_post.title = params[:new_post][:title][0...250] # Get only first 250 characters
    new_post.contents = params[:new_post][:contents]

    # Confirm post is valid and save or return HTTP error
    if new_post.valid?
      new_post.save!
    else
      render "public/422", :status => 422
      return
    end

    # Respond with newly created post in json format
    respond_with(new_post) do |format|
      format.json { render :json => new_post.as_json }
    end
    
  end

end
