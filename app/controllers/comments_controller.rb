class CommentsController < ApplicationController
  skip_before_action :require_login, only: %i[create]

  def create
    comment = Comment.build(comment_params)
    if comment.save
      redirect_to post_path(comment.post), success: "コメントを投稿しました。"
    else
      redirect_to post_path(comment.post), danger: "コメントの投稿に失敗しました。"
    end
  end

    private

    def comment_params
      params.require(:comment).permit(:body).merge(post_id: params[:post_id])
    end
end
