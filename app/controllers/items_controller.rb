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
    @item = Item.create(
      name: @product.name,
      quantity: item_params[:quantity],
      price: @product.price,
      date: Time.now,
      product_id: @product.id
    )
    @cart_item = CartItem.create(
      cart: current_user_cart,
      item: @item,
      quantity: item_params[:quantity]
    )
    @product.update_attributes(
        quantity: @product.quantity - @item.quantity, 
    ) 
    
    @reservation = Reservation.create(
      initial_date: reservation_initial_date,
      final_date: reservation_final_date,
      obs: reservation_params[:obs],
      user: current_user,
      item: @item,
    )
    
    respond_to do |format| 
      if @product.errors.any? || @cart_item.errors.any? ||
        @item.errors.any? || @reservation.errors.any?
          format.html { redirect_to cart_path(current_user_cart), notice: 'Item was successfully created.' }
          format.json { render :show, status: :created, location: @item }
      else
        format.html { redirect_to root_path }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
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

    def reservation_params
      params.require(:reservation).permit( :initial_date, :final_date, :obs )
    end

    def current_user_cart
      if current_user.reload.cart.blank?
        Cart.create(user_id: current_user.id, date: Time.now)
      else
        current_user.reload.cart
      end
    end

    #
    
    
    def reservation_initial_date
      DateTime.new(   reservation_params["initial_date(1i)"].to_i, 
                      reservation_params["initial_date(2i)"].to_i,
                      reservation_params["initial_date(3i)"].to_i,
                      reservation_params["initial_date(4i)"].to_i,
                      reservation_params["initial_date(5i)"].to_i
                  ) 
    end
    
    def reservation_final_date
      DateTime.new(   reservation_params["final_date(1i)"].to_i, 
                      reservation_params["final_date(2i)"].to_i,
                      reservation_params["final_date(3i)"].to_i,
                      reservation_params["final_date(4i)"].to_i,
                      reservation_params["final_date(5i)"].to_i
                  )
    end
end
