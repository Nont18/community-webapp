class UsersController < ApplicationController
    def index
      if params[:search]
        @users = User.where("username LIKE ?", "%#{params[:search]}%")
      else
        @users = User.all
      end
    end

    def delete
        @user = User.find(params[:id])
        @user.destroy
        redirect_to user_path, notice: "User was successfully destroyed."

        respond_to do |format|
            format.html { redirect_to admin_links_url, notice: "User was successfully destroyed." }
            format.json { head :no_content }
        end
    end

    def show
      @user = User.find(params[:id])
      @user.destroy
      # redirect_to user_path, notice: "User was successfully destroyed."
      respond_to do |format|
        format.html { redirect_to admin_url, notice: "User was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    def destroy
    end
    
end
  