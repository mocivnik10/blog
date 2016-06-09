class ProfilePicturesController < ApplicationController
  def create
    if current_user.avatar.nil?
      ProfilePicture.create(
        avatar_id: params[:avatar_id],
        user_id: current_user.id
      )
      flash[:notice] = 'Avatar updated.'
      redirect_to :back
    else
      current_user.profile_picture.destroy
      ProfilePicture.create(
        avatar_id: params[:avatar_id],
        user_id: current_user.id
      )
      flash[:notice] = 'Avatar updated.'
      redirect_to :back
    end

  end
end
