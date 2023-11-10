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

        respond_to do |format|
            format.html { redirect_to admin_links_url, notice: "User was successfully destroyed." }
            format.json { head :no_content }
        end
    end
end
  