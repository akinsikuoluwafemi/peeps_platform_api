class RequestsUsersController < ApplicationController
  # before_action :authenticate_user
  before_action :set_requests_user, only: [:show, :edit, :update, :destroy]

  # GET /requests_users
  # GET /requests_users.json
  def index
    @requests_users = RequestsUser.all
    render json: @requests_users


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
    
    @click = RequestsUser.where(user_id: current_user, request_id: params[:id]).count == 1
    if @click
      render json: true

    else @click
      render json: false

    end

  end

  # def de_activate
    
  #   @inactiveRequests = RequestsUser.where(request_id: params[:id]).count == 4
    
    
  #   # RequestsUser.where(updated_at: current_user.updated_at.to_time.to_i > 86400 )


  #   # && RequestsUser.where(updated_at: current_user.updated_at.to_time.to_i > 86400 )
  # #  RequestsUser.where(updated_at: current_user.updated_at.to_i > 24.hours)
  #  # DateTime.rfc3339('2020-12-14T01:19:54.631Z').to_time.to_i > 24.hours


  #   if @inactiveRequests
  #     render json: true

  #   else @inactiveRequests
  #     render json: false

  #   end

  # end


    def de_activate
    
    @inactiveRequests = RequestsUser.where(request_id: params[:id], fulfilled: true).count == 5
    
    
    # RequestsUser.where(updated_at: current_user.updated_at.to_time.to_i > 86400 )


    # && RequestsUser.where(updated_at: current_user.updated_at.to_time.to_i > 86400 )
  #  RequestsUser.where(updated_at: current_user.updated_at.to_i > 24.hours)
   # DateTime.rfc3339('2020-12-14T01:19:54.631Z').to_time.to_i > 24.hours


    if @inactiveRequests
      render json: true

    else @inactiveRequests
      render json: false

    end

  end



  def republish
    #  @republish = RequestsUser.left_outer_joins(:request).group(:request_id).having('count(request_id) == 5') && Request.where(active:false)
     @republish = RequestsUser.left_outer_joins(:request).group(:request_id).having('count(request_id) > 3 & count(count)') && Request.where(active:false)

  end

  
 # now = Time.now
# @inactiveRequests = RequestsUser.group('request_id').having('count(request_id) < 5') & RequestsUser.where(updated_at: (now - 24.hours)..now)
# render json: @inactiveRequests


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
      params.require(:requests_user).permit(:request_id, :user_id, :fulfilled)

    end
end
