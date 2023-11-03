class PhoneListsController < ApplicationController
  before_action :set_phone_list, only: %i[ show edit update destroy ]

  # GET /phone_lists or /phone_lists.json
  def index
    @phone_lists = if params[:search]
      PhoneList.where("name LIKE ?", "%#{params[:search]}%")
    else
      PhoneList.all
    end
  
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /phone_lists/1 or /phone_lists/1.json
  def show
  end

  def search
    @phone_lists = PhoneList.find(params[:id])
  end

  # GET /phone_lists/new
  def new
    @phone_list = PhoneList.new
  end

  # GET /phone_lists/1/edit
  def edit
  end

  # POST /phone_lists or /phone_lists.json
  def create
    @phone_list = PhoneList.new(phone_list_params)

    respond_to do |format|
      if @phone_list.save
        format.html { redirect_to phone_list_url(@phone_list), notice: "Phone list was successfully created." }
        format.json { render :show, status: :created, location: @phone_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @phone_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_lists/1 or /phone_lists/1.json
  def update
    respond_to do |format|
      if @phone_list.update(phone_list_params)
        format.html { redirect_to phone_list_url(@phone_list), notice: "Phone list was successfully updated." }
        format.json { render :show, status: :ok, location: @phone_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @phone_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_lists/1 or /phone_lists/1.json
  def destroy
    @phone_list.destroy

    respond_to do |format|
      format.html { redirect_to phone_lists_url, notice: "Phone list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_list
      @phone_list = PhoneList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def phone_list_params
      params.require(:phone_list).permit(:name, :phone_number)
    end
end
