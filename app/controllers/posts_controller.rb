class PostsController < ApplicationController

  expose(:posts) { Post.paginate(:page => params[:page], :per_page => 5) }
  expose(:post) { Post.slugged_find(params[:id]) }

end
