class StaticPagesController < ApplicationController
  
  def index
    @articles = Article.all
  end
  
  def contacts
  end
end
