class RequestsController < ApplicationController
  # before_action :authenticate_user  ,except: [:create, :show]
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  # GET /requests
  # GET /requests.json
  def index
    @requests = Request.all


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
    # @request = Request.new(request_params)

    @request = current_user.requests.build(request_params)


    # respond_to do |format|
      if @request.save
        # format.html { redirect_to @request, notice: 'Request was successfully created.' }
        # format.json { render :show, status: :created, location: @request }
        render json: @request, status: :created, location: @request
      else
        # format.html { render :new }
        # format.json { render json: @request.errors, status: :unprocessable_entity }
        render json: @request.errors.full_messages , status: :unprocessable_entity
      end
    # end
  end

  def fufilrequest

    @click = Requests.where(user_id: current_user, request_id: params[:id]).count == 1
    if @click
      render json: true

    else @click
      render json: false

    end


  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    # respond_to do |format|
      if @request.update(request_params)
        # format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        # format.json { render :show, status: :ok, location: @request }
        render json: @request
      else
        # format.html { render :edit }
        # format.json { render json: @request.errors, status: :unprocessable_entity }
        render json: @request.errors, status: :unprocessable_entity
      end
    # end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    # respond_to do |format|
    #   format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def request_params
      params.require(:request).permit(:description, :lat, :lng, :fulfilled, :request_type, :user_id, :click_count)
    end
end
