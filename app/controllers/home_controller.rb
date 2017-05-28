class HomeController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
  end

  def create
    post = Post.new(content: params[:content], image: params[:image])
    post.save
    redirect_to '/'
  end
end
