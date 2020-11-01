class MessagesController < ApplicationController
  # before_action :authenticate_user
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all

    # @messages = Message.all.group(:room_id)
    # Message.group(:room_id)
    # @messages = @messages_user.messages
    # @message = @messages_user.messages.new

   
    

    # @messages = MessagesUser.where(:user_id => current_user.id).order('created_at DESC')


    render json: @messages

  end

  # GET /messages/1
  # GET /messages/1.json
  def show
    render json: @message

  end

  # GET /messages/new
  def new
    @message = Message.new

  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create


    # @message = Message.new(message_params)
    @message = current_user.messages.build(message_params)
    @room = Room.find(message_params[:room_id])
    @message.user = current_user
    # @message = @room.messages.new(message_params) 


      if @message.save
        serialized_data = ActiveModelSerializers::Adapter::Json.new(
          MessageSerializer.new(@message)
        ).serializable_hash
        MessagesChannel.broadcast_to @room, serialized_data
        head :ok
        # render json: @message, status: :created, location: @message

      # else
      #   render json: @message.errors.full_messages , status: :unprocessable_entity

      end
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
      if @message.update(message_params)
        render json: @message

      else
        render json: @message.errors, status: :unprocessable_entity

      end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
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
