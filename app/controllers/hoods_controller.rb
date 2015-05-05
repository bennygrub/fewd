class HoodsController < ApplicationController
  before_action :set_hood, only: [:show, :edit, :update, :destroy]

  # GET /hoods
  # GET /hoods.json
  def index
    @hoods = Hood.all
  end

  # GET /hoods/1
  # GET /hoods/1.json
  def show
  end

  # GET /hoods/new
  def new
    @hood = Hood.new
  end

  # GET /hoods/1/edit
  def edit
  end

  # POST /hoods
  # POST /hoods.json
  def create
    @hood = Hood.new(hood_params)

    respond_to do |format|
      if @hood.save
        format.html { redirect_to @hood, notice: 'Hood was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hood }
      else
        format.html { render action: 'new' }
        format.json { render json: @hood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hoods/1
  # PATCH/PUT /hoods/1.json
  def update
    respond_to do |format|
      if @hood.update(hood_params)
        format.html { redirect_to @hood, notice: 'Hood was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hoods/1
  # DELETE /hoods/1.json
  def destroy
    @hood.destroy
    respond_to do |format|
      format.html { redirect_to hoods_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hood
      @hood = Hood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hood_params
      params.require(:hood).permit(:address, :city, :state, :country, :longitude, :latitude, :avatar, :name)
    end
end
