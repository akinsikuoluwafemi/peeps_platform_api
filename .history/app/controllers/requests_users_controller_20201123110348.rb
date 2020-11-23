class RequestsUsersController < ApplicationController
  # before_action :authenticate_user
  before_action :set_requests_user, only: [:show, :edit, :update, :destroy]

  # GET /requests_users
  # GET /requests_users.json
  def index
    @requests_users = RequestsUser.all
    render json: @requests_users

    # write query here femi

  end

  # GET /requests_users/1
  # GET /requests_users/1.json
  def show
    render json: @requests_user

  end

  # GET /requests_users/new
  def new
    @requests_user = RequestsUser.new
  end

  # GET /requests_users/1/edit
  def edit

  end

  # POST /requests_users
  # POST /requests_users.json
  def create
    @requests_user = RequestsUser.new(requests_user_params)

    # respond_to do |format|
      if @requests_user.save
        # format.html { redirect_to @requests_user, notice: 'Requests user was successfully created.' }
        # format.json { render :show, status: :created, location: @requests_user }
        render json: @requests_user, status: :created, location: @requests_user

      else
        # format.html { render :new }
        # format.json { render json: @requests_user.errors, status: :unprocessable_entity }
        render json: @requests_user.errors.full_messages , status: :unprocessable_entity


      end
    # end
  end

  def samevolunteer
    @click = RequestsUser.where(user_id: 3, request_id: 27).count > 0

    if @click 
      render json: {true

    else
      render json: false

    end


  end



  # PATCH/PUT /requests_users/1
  # PATCH/PUT /requests_users/1.json
  def update 
    # respond_to do |format|
      if @requests_user.update(requests_user_params)
        # format.html { redirect_to @requests_user, notice: 'Requests user was successfully updated.' }
        # format.json { render :show, status: :ok, location: @requests_user }
        render json: @requests_user

      else
        # format.html { render :edit }
        # format.json { render json: @requests_user.errors, status: :unprocessable_entity }
        render json: @requests_user.errors, status: :unprocessable_entity

      end
    # end
  end

  # DELETE /requests_users/1
  # DELETE /requests_users/1.json
  def destroy
    @requests_user.destroy
    # respond_to do |format|
    #   format.html { redirect_to requests_users_url, notice: 'Requests user was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requests_user
      @requests_user = RequestsUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def requests_user_params
      # params.fetch(:requests_user, {})
      params.require(:requests_user).permit(:request_id, :user_id)

    end
end
