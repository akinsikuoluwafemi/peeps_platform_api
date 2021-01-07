class RequestsController < ApplicationController
  # before_action :authenticate_user  ,except: [:create, :show]
  # before_action :authenticate_user

  before_action :set_request, only: [:show, :edit, :update, :destroy]

  # GET /requests
  # GET /requests.json
  def index
    # @requests = Request.all
    @now = Time.now - 24.hours
    @requests =  RequestsUser.left_outer_joins(:request).group(:request_id).having('count(request_id) < 5') && Request.where("updated_at > ?", @now).where(fulfilled: false)
    render json: @requests
  end


  def re_publish
    @now = Time.now - 24.hours
    @republish =  RequestsUser.left_outer_joins(:request).group(:request_id).having('count(request_id) < 5') && Request.where("updated_at < ?", @now).where(fulfilled: false)

    render json: @republish
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



      if @request.save
        render json: @request, status: :created, location: @request
      else
        render json: @request.errors.full_messages , status: :unprocessable_entity
      end
  end

# render json: @inactiveRequests  


  def success_and_republish_request
     @now = Time.now - 24.hours
    @successAndRepublish =  RequestsUser.left_outer_joins(:request).group(:request_id).having('count(request_id) < 5') && Request.where("updated_at < ?", @now).where(fulfilled: false, user_id: params[:id]).or(Request.where(fulfilled: true,user_id: params[:id]))
    render json: @successAndRepublish
  end

 

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
      params.require(:request).permit(:description, :lat, :lng, :fulfilled, :request_type, :user_id)
    end

end
