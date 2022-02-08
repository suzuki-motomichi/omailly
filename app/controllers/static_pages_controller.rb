class StaticPagesController < ApplicationController
  skip_before_action :require_login, only: %i[top terms privacy description]

  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: { error: '404 not found' }, status: 404
  end

  def top
    posts = Post.select(:title, :content, :last_day)
    render json: posts
  end

  def terms; end

  def privacy; end

  def description; end

  private

  def set_post
    post = Post.find(params[:status]).desc
  end
end
