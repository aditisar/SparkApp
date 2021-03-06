class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    # puts current_user
    @users = current_user #OwnedDevice.all
    render json: @users
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    render json: @user
  end

    # GET /transactions/1/edit
  def edit
  	@user = current_user #User.find(params[:id])
    # render json: @user
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @current_user
  end


 private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:id, :first_name, :last_name, :user_email, :password, :password_confirmation, :old_password)
    end

end