class RequestsRoomsController < ApplicationController
  before_action :set_requests_room, only: [:show, :edit, :update, :destroy]

  # GET /requests_rooms
  # GET /requests_rooms.json
  def index
    @requests_rooms = RequestsRoom.all
  end

  # GET /requests_rooms/1
  # GET /requests_rooms/1.json
  def show
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
        format.html { redirect_to @requests_room, notice: 'Requests room was successfully created.' }
        format.json { render :show, status: :created, location: @requests_room }
      else
        format.html { render :new }
        format.json { render json: @requests_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests_rooms/1
  # PATCH/PUT /requests_rooms/1.json
  def update
    respond_to do |format|
      if @requests_room.update(requests_room_params)
        format.html { redirect_to @requests_room, notice: 'Requests room was successfully updated.' }
        format.json { render :show, status: :ok, location: @requests_room }
      else
        format.html { render :edit }
        format.json { render json: @requests_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests_rooms/1
  # DELETE /requests_rooms/1.json
  def destroy
    @requests_room.destroy
    respond_to do |format|
      format.html { redirect_to requests_rooms_url, notice: 'Requests room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requests_room
      @requests_room = RequestsRoom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def requests_room_params
      params.fetch(:requests_room, {})
    end
end
