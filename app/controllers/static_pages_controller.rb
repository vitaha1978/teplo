class StaticPagesController < ApplicationController
  skip_before_action :authorize, only: [:index, :contacts]
  def index
    @articles = Article.all
  end
  
  def contacts
  end
end
