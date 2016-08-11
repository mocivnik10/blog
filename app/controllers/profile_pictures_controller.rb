class ProfilePicturesController < ApplicationController
  def create
    if current_user.avatar.nil?
      ProfilePicture.create(
        avatar_id: params[:avatar_id],
        user_id: current_user.id
      )
      flash[:notice] = 'Profilna slika izbrana!'
      redirect_to :back
    else
      current_user.profile_picture.destroy
      ProfilePicture.create(
        avatar_id: params[:avatar_id],
        user_id: current_user.id
      )
      flash[:notice] = 'Profilna slika posodobljena!'
      redirect_to :back
    end

  end
end
