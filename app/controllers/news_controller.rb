class NewsController < ApplicationController
before_action :find_news, only: [:edit, :show, :destroy, :update]
before_action :authenticate_user!, except: [:index, :show]

  def index
    @news = News.all
  end

  def show
    @comments = Comments.where(:news_id => @news)
  end

  def new
    @news = current_user.news.build
  end

  def create
    @news = current_user.news.build(news_params)
    if @news.save
      redirect_to @news
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @news.update(news_params)
      redirect_to @news
    else
      render 'edit'
    end
  end

  def destroy
    @news.destroy
    redirect_to news_index_path
  end

  private

    def find_news
        @news = News.find(params[:id])
    end

    def news_params
      params.require(:news).permit(:title, :content, :news_img)
    end

end
