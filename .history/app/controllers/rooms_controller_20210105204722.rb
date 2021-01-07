class RoomsController < ApplicationController
  # before_action :authenticate_user
  
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  # GET /rooms
  # GET /rooms.json
  def index
    # @rooms = Room.all

    @now = Time.now - 24.hours
    @rooms =  RequestsUser.left_outer_joins(:request).group(:request_id).having('count(request_id) < 5') && Request.where(fulfilled: false) && Room.where("updated_at > ?", @now)
    render json: @rooms

  end

  def republish_room
    @now = Time.now - 24.hours
    @rooms =  RequestsUser.left_outer_joins(:request).group(:request_id).having('count(request_id) < 5') && Request.where(fulfilled: false) && Room.where("updated_at < ?", @now)
    render json: @rooms
  end


  def de_activate_room
    @deactivate = Room.where(request_id: params[:id]).count
  end

  def show
    
    render json: @room
  end

  # GET /rooms/new
  def new
    @room = Room.new
  end

  # GET /rooms/1/edit
  def edit
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @room = Room.new(room_params)

      if @room.save
        
        render json: @room, status: :created, location: @room
      
      else
        render json: @room.errors.full_messages , status: :unprocessable_entity

      end
    # end
  end


  def update
      if @room.update(room_params)
        render json: @room
      
      else
        render json: @room.errors, status: :unprocessable_entity
      
      end
    # end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])

    end

    # Only allow a list of trusted parameters through.
    def room_params
      params.require(:room).permit(:name, :sender_id, :receiver_id, :request_id, :patched)
    end
end
