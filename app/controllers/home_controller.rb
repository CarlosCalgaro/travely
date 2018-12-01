class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @products = Product.all
  end

  def checkout
  
  end

end
