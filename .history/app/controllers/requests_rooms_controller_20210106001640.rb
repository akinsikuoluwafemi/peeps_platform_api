class RequestsRoomsController < ApplicationController
  before_action :set_requests_room, only: [:show, :edit, :update, :destroy]

  # GET /requests_rooms
  # GET /requests_rooms.json
  def index
    @requests_rooms = RequestsRoom.all
    render json: @requests_rooms

  end

  # GET /requests_rooms/1
  # GET /requests_rooms/1.json
  def show
    render json: @requests_room

  end

  # GET /requests_rooms/new
  def new
    @requests_room = RequestsRoom.new
  end

  # GET /requests_rooms/1/edit
  def edit
  end

  # POST /requests_rooms
  # POST /requests_rooms.json
  def create
    @requests_room = RequestsRoom.new(requests_room_params)

    respond_to do |format|
      if @requests_room.save
        render json: @requests_room, status: :created, location: @requests_room

      else
        render json: @requests_room.errors.full_messages , status: :unprocessable_entity

      end
    end
  end

  # PATCH/PUT /requests_rooms/1
  # PATCH/PUT /requests_rooms/1.json
  def update
      if @requests_room.update(requests_room_params)
        render json: @requests_room

      else
        render json: @requests_room.errors, status: :unprocessable_entity

      end
    end

  # DELETE /requests_rooms/1
  # DELETE /requests_rooms/1.json
  def destroy
    @requests_room.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requests_room
      @requests_room = RequestsRoom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def requests_room_params
      # params.fetch(:requests_room, {})
      params.require(:requests_room).permit(:request_id, :room_id)

    end
end
