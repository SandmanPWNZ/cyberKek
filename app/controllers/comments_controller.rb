class CommentsController < ApplicationController
before_action :authenticate_user!

  def create
    @news = News.find(params[:news_id])
    @comment = Comment.create(params.require(:comment).permit(:content))
    @comment.user_id = current_user.id
    @comment.news_id = @news.id

      if @comment.save
        redirect_to news_path(@news)
      else
        render 'new'
      end
  end

  def destroy
    @comment.destroy
      redirect_to news_index_path
  end

end
