class StablishmentsController < ApplicationController
  before_action :set_stablishment, only: [:show, :edit, :update, :destroy]

  # GET /stablishments
  # GET /stablishments.json
  def index
    @stablishments = Stablishment.all
  end

  # GET /stablishments/1
  # GET /stablishments/1.json
  def show
  end

  # GET /stablishments/new
  def new
    @stablishment = Stablishment.new
  end

  # GET /stablishments/1/edit
  def edit
  end

  # POST /stablishments
  # POST /stablishments.json
  def create
    @stablishment = Stablishment.new(stablishment_params)
    @stablishment.company_user = current_user
    respond_to do |format|
      if @stablishment.save
        format.html { redirect_to @stablishment, notice: 'Stablishment was successfully created.' }
        format.json { render :show, status: :created, location: @stablishment }
      else
        format.html { render :new }
        format.json { render json: @stablishment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stablishments/1
  # PATCH/PUT /stablishments/1.json
  def update
    respond_to do |format|
      if @stablishment.update(stablishment_params)
        format.html { redirect_to @stablishment, notice: 'Stablishment was successfully updated.' }
        format.json { render :show, status: :ok, location: @stablishment }
      else
        format.html { render :edit }
        format.json { render json: @stablishment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stablishments/1
  # DELETE /stablishments/1.json
  def destroy
    @stablishment.destroy
    respond_to do |format|
      format.html { redirect_to stablishments_url, notice: 'Stablishment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stablishment
      @stablishment = Stablishment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stablishment_params
      params.require(:stablishment).permit(:address, :name, :country, :phone, :phone2, :cnpj, :fantasy)
    end
end
