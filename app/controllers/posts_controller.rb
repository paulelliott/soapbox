class PostsController < ApplicationController

  expose(:posts) do
    Post.published.paginate(:page => params[:page], :per_page => 5)
  end
  expose(:post) { Post.find(params[:id]) }

end
