class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :can_commit, only: [:create, :new, :update, :edit]

  skip_before_action :authenticate_user!, only: [:show]

  # GET /products
  # GET /products.json
  def can_commit
    if current_user.is_human?
      flash[:alert] = "Apenas usuários empresas podem editar"
      redirect_to root_path if current_user.is_human?
    end
  end

  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def validate
    begin
      @reservation = Reservation.find(params[:code])
      flash[:notice] = { status: 'success', msg: "Reserva Válida \n Usuário: " + @reservation.user.email + " \n Produto: " + @reservation.item.product.name + " \n Data Inicial: " + @reservation.initial_date.strftime("%d/%m/%Y %H:%m") + " \n Data Final: " + @reservation.final_date.strftime("%d/%m/%Y %H:%m") }
      redirect_to products_path
    rescue ActiveRecord::RecordNotFound
      flash[:notice] = { status: 'warning', msg: 'Reserva Inválida' }
      redirect_to products_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :quantity, :price, :address, :stablishment_id)
    end
end
