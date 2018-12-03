class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @banner = 1
    @products = Product.all
  end

  def checkout

  end

end
