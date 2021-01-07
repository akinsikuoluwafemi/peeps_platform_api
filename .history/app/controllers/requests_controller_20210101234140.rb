class RequestsController < ApplicationController
  # before_action :authenticate_user  ,except: [:create, :show]
  before_action :authenticate_user

  before_action :set_request, only: [:show, :edit, :update, :destroy]

  # GET /requests
  # GET /requests.json
  def index
    # @requests = Request.all
    # @requests = Request.where(active: true)
    # @requests = Request.where(updated_at: current_user.updated_at > (Time.now - 24.hours))
    RequestsUser.left_outer_joins(:request).group(:request_id).having('count(request_id) < 5') & Request.where(updated_at:  updated_at <(Time.now - 24.hours))
    render json: @requests
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
    render json: @request
  end

  # GET /requests/new
  def new
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)

    # @request = current_user.requests.build(request_params)


      if @request.save
        # format.html { redirect_to @request, notice: 'Request was successfully created.' }
        # format.json { render :show, status: :created, location: @request }
        render json: @request, status: :created, location: @request
      else
        # format.html { render :new }
        # format.json { render json: @request.errors, status: :unprocessable_entity }
        render json: @request.errors.full_messages , status: :unprocessable_entity
      end
  end

# now = Time.now
# @inactiveRequests = Request.left_outer_joins(:RequestsUser).group('request.id').having('count(request_id) < 5') & & Request.where(updated_at: (now - 24.hours)..now)
# render json: @inactiveRequests  



 

  def update
      if @request.update(request_params)
        # format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        # format.json { render :show, status: :ok, location: @request }
        render json: @request
      else
        # format.html { render :edit }
        # format.json { render json: @request.errors, status: :unprocessable_entity }
        render json: @request.errors, status: :unprocessable_entity
      end
  end

  def destroy
    @request.destroy
  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def request_params
      params.require(:request).permit(:description, :lat, :lng, :fulfilled, :request_type, :user_id, :active)
    end

end
