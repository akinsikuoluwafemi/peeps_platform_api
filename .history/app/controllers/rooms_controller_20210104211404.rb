class RoomsController < ApplicationController
  # before_action :authenticate_user
  
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  # GET /rooms
  # GET /rooms.json
  def index
    # @rooms = Room.all

    @now = Time.now - 24.hours
    @rooms = Room.where("updated_at > ?", @now)
    render json: @rooms

  end

  def republish_room 
    @now = Time.now - 24.hours
    @rooms = Room.where("updated_at < ?", @now)
    render json: @rooms
  end

  # GET /rooms/1
  # GET /rooms/1.json
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

  # def deactivate_rooms
  #     @deactivaterooms = Room.where(name: params[:name])
  #     if @deactivaterooms
  #       render json: @deactivaterooms
  #     end
  # end


  # PATCH/PUT /rooms/1
  # PATCH/PUT /rooms/1.json
  def update
    # respond_to do |format|
      if @room.update(room_params)
        # format.html { redirect_to @room, notice: 'Room was successfully updated.' }
        # format.json { render :show, status: :ok, location: @room }
        render json: @room
      
      else
        # format.html { render :edit }
        # format.json { render json: @room.errors, status: :unprocessable_entity }
        render json: @room.errors, status: :unprocessable_entity
      
      end
    # end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room.destroy
    # respond_to do |format|
    #   format.html { redirect_to rooms_url, notice: 'Room was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])

    end

    # Only allow a list of trusted parameters through.
    def room_params
      params.require(:room).permit(:name, :sender_id, :receiver_id, :request_id)
    end
end
