class ApplicationController < ActionController::Base
  before_action :set_search

  private

  def set_search
    @q = Post.ransack(params[:q])
    @search = @q.result(distinct: true)
  end
end
