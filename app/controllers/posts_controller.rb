class PostsController < ApplicationController
  include Pagy::Backend
  def index
    @pagy, @posts = pagy(Post.all)
  end

  def new
    @post = Post.new
  end

  def create
    # binding.pry
    @post = Post.new(post_params)

    if params[:back].present?
      render :new
      return
    end

    if @post.save
      # binding.pry
      redirect_to post_path(@post), success: '作成しました' # お墓作成部分ができたらそっちに飛ばす
    else
      flash.now['danger'] = "作成できませんでした"
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])

  end

  def confirm_new
    @post = Post.new(post_params)
    # binding.pry
    render :new unless @post.valid?
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :last_day, :status)
  end
end
