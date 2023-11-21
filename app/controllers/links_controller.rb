class LinksController < ApplicationController
  before_action :set_link, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index]
  before_action :check_admin_role, only: [:admin]

  # GET /links or /links.json
  def index
    @links = Link.all
  end

  # GET /links/1 or /links/1.json
  def show
  end

  def admin
    @link = Link.all

  end
  
  def destroy_user
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to admin_links_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # GET /links/new
  def new
    @link = Link.new
  end

  # GET /links/1/edit
  def edit
    # @link = Link.find(params[:id])
    # if @link.user != current_user
    #   flash[:alert] = "You don't have permission to edit this link."
    #   redirect_to @link
    # end
  end

  # POST /links or /links.json
  def create
    @link = Link.new(link_params)

    respond_to do |format|
      if @link.save
        format.html { redirect_to link_url(@link), notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @link }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /links/1 or /links/1.json
  def update
    respond_to do |format|
      if @link.update(link_params)
        format.html { redirect_to link_url(@link), notice: "Link was successfully updated." }
        format.json { render :show, status: :ok, location: @link }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /links/1 or /links/1.json
  def destroy
    @link = Link.find(params[:id])
    @link.students.destroy_all
    @link.destroy


    respond_to do |format|
      format.html { redirect_to links_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def link_params
      params.require(:link).permit(:name, :url, :picture, :ruch_emergency, :type_emergency, :user)
    end
    
    def check_admin_role
      if current_user.username != 'admin'

        respond_to do |format|
          format.html { redirect_to links_url, notice: "You don't have permission to access this page." }
          format.json { head :no_content }
        end
      end
    end
end
