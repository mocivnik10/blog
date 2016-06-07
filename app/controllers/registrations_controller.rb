class RegistrationsController < Devise::RegistrationsController
  before_action :set_user, only: [:edit, :update]


  def edit
  end

  def update
    if @user.update(account_update_params)
      sign_in(@user, bypass: true)
      redirect_to articles_path, flash: {notice: "Uporabnik uspešno posodobljen!"}
    else
      render 'edit'
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:nickname, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:nickname, :email, :password, :password_confirmation, :current_password)
  end

  def set_user
    @user = current_user
  end
end
