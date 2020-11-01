class MessagesController < ApplicationController
  # before_action :authenticate_user
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all
    # @messages = MessagesUser.where(:user_id => current_user.id)


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
    @message = current_user.mess

    # respond_to do |format|
      if @message.save
        # format.html { redirect_to @message, notice: 'Message was successfully created.' }
        # format.json { render :show, status: :created, location: @message }
        render json: @message, status: :created, location: @message

      else
        # format.html { render :new }
        # format.json { render json: @message.errors, status: :unprocessable_entity }
        render json: @message.errors.full_messages , status: :unprocessable_entity


      end
    # end
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
    # respond_to do |format|
      if @message.update(message_params)
        # format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        # format.json { render :show, status: :ok, location: @message }
        render json: @message

      else
        # format.html { render :edit }
        # format.json { render json: @message.errors, status: :unprocessable_entity }
        render json: @message.errors, status: :unprocessable_entity

      end
    # end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message.destroy
    # respond_to do |format|
    #   format.html { redirect_to messages_url, notice: 'Message was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def message_params
      params.require(:message).permit(:body, :user_id)
    end
end