class PagesController < ApplicationController
before_action :authenticate_user!, except: [:home]

  def home
    @news = News.all
  end

  def admin

  end

end
