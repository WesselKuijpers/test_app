class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "Succes!"
      redirect_to post_path(@post)
    else
      render 'edit'
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post was succesfully created."
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description)
  end
end