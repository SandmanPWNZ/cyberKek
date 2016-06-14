class PagesController < ApplicationController

  def home
    @news = News.all
  end

end
