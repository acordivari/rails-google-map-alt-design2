class StopsController < ApplicationController

  # before_action :set_stop, only: [:show, :edit, :update, :destroy]

  # GET /stops
  # GET /stops.json
  def index
    @stops = Stop.all
  end

  # GET /stops/1
  # GET /stops/1.json
  def show
    @stop = Stop.find_by_id(params[:id])
  end

  # GET /stops/new
  def new
    @stop = Stop.new
  end

  # GET /stops/1/edit
  def edit
  end

  # POST /stops
  # POST /stops.json
  def create
    @stop = Stop.create(stop_params)

    respond_to do |format|
      if @stop.save
        format.html { redirect_to stop_path(@stop), notice: 'Stop was successfully updated.' }
        format.json { render :show, status: :created, location: @stop }
      else
        format.html { render :new }
        format.json { render json: @stop.errors, status: :unprocessable_entity }
      end
    end
  end

  #
  # # DELETE /stops/1
  # # DELETE /stops/1.json
  # def destroy
  #   @stop.destroy
  #   respond_to do |format|
  #     format.html { redirect_to trip_path(@trip), notice: 'Stop was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.


    #
    # def set_stop
    #   @stop = @trip.stops.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def stop_params
      params.require(:stop).permit(:pronouns, :name, :address, :latitude, :longitude, :delivery_instructions, :phone_number)
    end
end
