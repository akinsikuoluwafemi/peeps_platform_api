class MessagesUsersController < ApplicationController
  before_action :set_messages_user, only: [:show, :edit, :update, :destroy]

  # GET /messages_users
  # GET /messages_users.json
  def index
    @messages_users = MessagesUser.all
    #messages_users 

    render json: @messages_users

  end

  # GET /messages_users/1
  # GET /messages_users/1.json
  def show
    render json: @messages_user

  end

  # GET /messages_users/new
  def new
    @messages_user = MessagesUser.new
  end

  # GET /messages_users/1/edit
  def edit

  end

  # POST /messages_users
  # POST /messages_users.json
  def create
    @messages_user = MessagesUser.new(messages_user_params)

    # respond_to do |format|
      if @messages_user.save
        # format.html { redirect_to @messages_user, notice: 'Messages user was successfully created.' }
        # format.json { render :show, status: :created, location: @messages_user }
        render json: @messages_user, status: :created, location: @messages_user

      else
        # format.html { render : new }
        # format.json { render json: @messages_user.errors, status: :unprocessable_entity }
        render json: @messages_user.errors.full_messages , status: :unprocessable_entity

      end
    # end
  end

  # PATCH/PUT /messages_users/1
  # PATCH/PUT /messages_users/1.json
  def update
    # respond_to do |format|
      if @messages_user.update(messages_user_params)
        # format.html { redirect_to @messages_user, notice: 'Messages user was successfully updated.' }
        # format.json { render :show, status: :ok, location: @messages_user }
        render json: @messages_user
      
      else
        # format.html { render :edit }
        # format.json { render json: @messages_user.errors, status: :unprocessable_entity }
        render json: @messages_user.errors, status: :unprocessable_entity
        
      end
    # end
  end

  # DELETE /messages_users/1
  # DELETE /messages_users/1.json
  def destroy
    @messages_user.destroy
    # respond_to do |format|
    #   format.html { redirect_to messages_users_url, notice: 'Messages user was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_messages_user
      @messages_user = MessagesUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def messages_user_params
      # params.fetch(:messages_user, {})
      params.require(:messages_user).permit(:message_id, :user_id)

    end
end
