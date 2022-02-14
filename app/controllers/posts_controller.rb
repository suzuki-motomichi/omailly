class PostsController < ApplicationController
  skip_before_action :require_login, only: %i[index new show likes]
  include Pagy::Backend
  def index
    @pagy, @posts = pagy_countless(Post.all.order('created_at DESC'), items: 20, link_extra: 'data-remote="true"')
    @q.result(distinct: true).order('created_at DESC')
    if @pagy.page == @pagy.pages
      @next_page = "last"
    else
      @next_page = @pagy.page
    end
  end

  def new
    if logged_in?
      @post = current_user.posts.new
    else
      redirect_to posts_path, warning: t('.warning')
    end
  end

  def create
    @post = current_user.posts.new(post_params)

    if params[:back].present?
      render :new
      return
    end

    if @post.save
      redirect_to post_path(@post), success: t('.success')
    else
      flash.now[:warning] = t('.notice')
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.order(created_at: :desc)
  end

  def confirm_new
    @post = current_user.posts.new(post_params)
    render :new unless @post.valid?
  end

  def likes
    @post = Post.find(params[:post_id])
    @like = @post.likes + 1
    @post.update(likes: @like)
  end

  def edit
    @post = current_user.posts.find(params[:id])
  end

  def update
    @post = current_user.posts.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post), success: t('.success')
    else
      flash.now[:warning] = t('warning')
      render :edit
    end
  end

  def destroy
    @post = current_user.posts.find(params[:id])
    @post.destroy!
    redirect_to posts_path, success: t('.success')
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :last_day, :status)
  end
end
