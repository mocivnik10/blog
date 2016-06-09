class ProfilePicture < ActiveRecord::Base
  belongs_to :user
  belongs_to :avatar
end
