class MessagesController < ApplicationController
  before_action :authenticate_user
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all


    render json: @messages

  end

  def show
    render json: @message

  end

  def new
    @message = Message.new

  end

  def edit

  end

  def create


    @message = Message.new(message_params)
    @room = Room.find(message_params[:room_id])



      if @message.save
       
         RoomsChannel.broadcast_to(@room, {
          room: @room,
          users: @room.users,
          messages: @room.messages
        })

      end
        render json: @message

  end

  def update
      if @message.update(message_params)
        render json: @message

      else
        render json: @message.errors, status: :unprocessable_entity

      end
  end

  def destroy
    @message.destroy
   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def message_params
      params.require(:message).permit(:body, :user_id, :room_id)
    end
end
