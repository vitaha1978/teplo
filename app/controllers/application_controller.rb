class ApplicationController < ActionController::Base
  
  
  protect_from_forgery with: :exception
  
  include CurrentCart
  before_action :set_cart
  
  protected
    def authorize
      unless User.find_by(id: session[:user_id])
      redirect_to login_url, notice: "Будь ласка, авторизуйтеся"
    end
  end
  
end
