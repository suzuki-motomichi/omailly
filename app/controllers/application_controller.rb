class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :warning, :danger
  before_action :set_search
  before_action :require_login

  private

  def set_search
    @q = Post.ransack(params[:q])
    @search = @q.result(distinct: true)
  end
end
