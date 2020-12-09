class UsersController < ApplicationController
  # before_action :authenticate_user,except: [:create, :show]
  before_action :set_user, only: [:show, :edit, :update, :destroy, :patch]

  # GET /users
  # GET /users.json
  def index
    @users = User.all.with_attached_avatar
    # @users = User.all


    render json: @users
  end

  # GET /users/1
  # GET /users/1.json
  def show
    render json: @user

  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    
    @user = User.new(user_params)
    


    
    # respond_to do |format|
      if @user.save
        # format.html { redirect_to @user, notice: 'User was successfully created.' }
        # format.json { render :show, status: :created, location: @user }
        # render json: @user, status: :created

        auth_token = Knock::AuthToken.new payload: { sub: @user.id }
        render json: {user: @user, token: auth_token} , status: :created

       
      else
        render json: @user.errors.full_messages, status: :unprocessable_entity
      end
    # end
  end


    def update
      @user.update(user_params)
      @avatar_url = rails_blob_path(@user.avatar)
      render json: {user: @user,  avatar_url: @avatar_url}
    end

  

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end


    def auth_token
      if entity.respond_to? :to_token_payload
        AuthToken.new payload: entity.to_token_payload
      else
        AuthToken.new payload: { sub: entity.id }
      end
    end






    # Only allow a list of trusted parameters through.
  
    
end
