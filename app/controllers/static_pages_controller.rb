class StaticPagesController < ApplicationController
  skip_before_action :require_login, only: %i[top terms privacy description]

  def top; end

  def terms; end

  def privacy; end

  def description; end
end
