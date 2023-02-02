class PlaceRatingsController < ApplicationController
  before_action :set_place, only: %i[ new create ]

  # GET /places/new
  def new
    @place_rating = @place.place_ratings.new
  end

  # POST /places or /places.json
  def create
    @place_rating = @place.place_ratings.new(place_params)

    respond_to do |format|
      if @place_rating.save
        format.html { redirect_to place_url(@place), notice: "Place rating was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @place_rating.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @place = Place.find_by(id: params[:place_id])
    end

    # Only allow a list of trusted parameters through.
    def place_params
      params.require(:place_rating).permit(:rating)
    end
end
