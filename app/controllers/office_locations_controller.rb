class OfficeLocationsController < ApplicationController
  before_action :set_office_location, only: [:show, :edit, :update, :destroy]

  # GET /office_locations
  # GET /office_locations.json
  def index
    @office_locations = OfficeLocation.all
  end

  # GET /office_locations/1
  # GET /office_locations/1.json
  def show
  end

  # GET /office_locations/new
  def new
    @office_location = OfficeLocation.new
  end

  # GET /office_locations/1/edit
  def edit
  end

  # POST /office_locations
  # POST /office_locations.json
  def create
    @office_location = OfficeLocation.new(office_location_params)

    respond_to do |format|
      if @office_location.save
        format.html { redirect_to @office_location, notice: 'Office location was successfully created.' }
        format.json { render :show, status: :created, location: @office_location }
      else
        format.html { render :new }
        format.json { render json: @office_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /office_locations/1
  # PATCH/PUT /office_locations/1.json
  def update
    respond_to do |format|
      if @office_location.update(office_location_params)
        format.html { redirect_to @office_location, notice: 'Office location was successfully updated.' }
        format.json { render :show, status: :ok, location: @office_location }
      else
        format.html { render :edit }
        format.json { render json: @office_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /office_locations/1
  # DELETE /office_locations/1.json
  def destroy
    @office_location.destroy
    respond_to do |format|
      format.html { redirect_to office_locations_url, notice: 'Office location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_office_location
      @office_location = OfficeLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def office_location_params
      params.require(:office_location).permit(:street_address, :zip, :phone, :physician_id)
    end
end
