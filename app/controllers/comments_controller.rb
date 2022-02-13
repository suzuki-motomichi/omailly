class CommentsController < ApplicationController
  skip_before_action :require_login, only: %i[create]

  def create
    @comment = Comment.new(comment_params)
    @comment.save
  end

    private

    def comment_params
      params.require(:comment).permit(:body).merge(post_id: params[:post_id])
    end
end
