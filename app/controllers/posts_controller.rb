class PostsController < ApplicationController

  expose(:posts) { Post.paginate(:page => params[:page], :per_page => 5) }
  expose(:post) { Post.find(params[:id]) }

end
