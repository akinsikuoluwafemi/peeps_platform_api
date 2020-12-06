class UsersController < ApplicationController
  # before_action :authenticate_user,except: [:create, :show]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

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

    # @user = url_for(@user.avatar)
    # user.avatar.attach(params[:avatar])


    
    # respond_to do |format|
      if @user.save
        # format.html { redirect_to @user, notice: 'User was successfully created.' }
        # format.json { render :show, status: :created, location: @user }
        # render json: @user, status: :created
        token = encode
        render json: @user, status: :created

       
      else
        # format.html { render :new }
        # format.json { render json: @user.errors.full_messages, status: :unprocessable_entity }
        render json: @user.errors, status: :unprocessable_entity
      end
    # end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  # def update
  #   # respond_to do |format|
  #     if @user.update(user_params)
  #       # format.html { redirect_to @user, notice: 'User was successfully updated.' }
  #       # format.json { render :show, status: :ok, location: @user }
  #       render json: @user
  #     else
  #       # format.html { render :edit }
  #       # format.json { render json: @user.errors, status: :unprocessable_entity }
  #       render json: @user.errors, status: :unprocessable_entity

  #     end
  #   # end
  # end

    def update
      @user.update(user_params)
      @avatar_url = rails_blob_path(@user.avatar)

      render json: {user: @user,  avatar_url: avatar_url}
    end

  def getlast 
    @user = User.last
    render json: @user
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    # respond_to do |format|
    #   format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      # params.require(:auth).permit(:first_name, :last_name, :email, :password, :avatar)
      params.require(:auth).permit(:first_name, :last_name, :email, :password, :avatar)

    end
end
