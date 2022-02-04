class PostsController < ApplicationController
  skip_before_action :require_login, only: %i[index new show]
  include Pagy::Backend
  def index
    @per_page = 10
    @pagy, @posts = pagy_countless(Post.all, items: @per_page, link_extra: 'data-remote="true"')
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
      redirect_to posts_path, danger: "作成にはログインが必要です"
    end
  end

  def create
    @post = current_user.posts.new(post_params)

    if params[:back].present?
      render :new
      return
    end

    if @post.save
      redirect_to post_path(@post), success: '作成しました'
    else
      flash.now['danger'] = '作成できませんでした'
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

  private

  def post_params
    params.require(:post).permit(:title, :content, :last_day, :status)
  end
end
