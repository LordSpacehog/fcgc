class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to root_url, notice: 'User was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
#  def update
#    respond_to do |format|
#      if @user.update(user_params)
#        format.html { redirect_to @user, notice: 'User was successfully updated.' }
#        format.json { render :show, status: :ok, location: @user }
#      else
#        format.html { render :edit }
#        format.json { render json: @user.errors, status: :unprocessable_entity }
#      end
#    end
#  end
#
#  # DELETE /users/1
#  # DELETE /users/1.json
#  def destroy
#    @user.destroy
#    respond_to do |format|
#      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
#      format.json { head :no_content }
#    end
#  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :bio, :website, :password, :password_confirmation)
    end
end
