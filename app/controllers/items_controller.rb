class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :set_product, only: [:create, :new, :update, :edit]
  # GET /items
  # GET /items.json
  def index
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    # binding.pry
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

    respond_to do |format|
        format.html { redirect_to cart_path(current_user_cart), notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    def set_product
      @product = Product.find(params[:product_id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :quantity, :price, :date)
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
