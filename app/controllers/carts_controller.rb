class CartsController < ApplicationController
  before_action :set_cart, only: %i[show edit update destroy]
  before_action :set_product, only: [:add_item]
  # GET /carts
  # GET /carts.json
  def index
    @carts = Cart.all
  end

  # GET /carts/1
  # GET /carts/1.json
  def show; end

  # GET /carts/new
  def new
    @cart = Cart.new
  end

  # GET /carts/1/edit
  def edit; end

  def add_item
    @item = Item.create(
      name: @product.name,
      quantity: item_params[:quantity],
      price: @product.price,
      date: Time.now,
      product_id: @product.id
    )
    cart_item = CartItem.new(
      cart: current_user_cart,
      item: @item,
      quantity: item_params[:quantity]
    )
    @product.update_attributes(
      quantity: @product.quantity - @item.quantity, 
    )
    if cart_item.save
      redirect_to carts_path(current_user_cart)
    else
      raise cart_item.errors.full_messages.to_s
    end
  end

  def remove_item
    item = Item.find(params[:item_id])
    item.cart_item.destroy
    item.destroy
    flash[:success] = 'Item removido do carrinho'
    redirect_to root_path
  end

  # POST /carts
  # POST /carts.json
  def create
    @cart = Cart.new(cart_params)

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carts/1
  # PATCH/PUT /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html {
          redirect_to @cart, notice: 'Cart was successfully updated.'
        }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
    @cart.destroy
    respond_to do |format|
      format.html { redirect_to carts_url, notice: 'Cart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cart
    @cart = Cart.find(params[:id])
  end

  def set_product
    @product = Product.find(params[:product_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def cart_params
    params.require(:cart).permit(:user_id, :date)
  end

  def item_params
    params.require(:item).permit(:quantity)
  end
  
  def current_user_cart
    if current_user.cart.blank?
      @current_cart =  Cart.create(user_id: current_user.id, date: Time.now)
    else
      @current_cart||=  current_user.cart
    end
    return @current_cart
  end

end
