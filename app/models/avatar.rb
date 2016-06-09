class Avatar < ActiveRecord::Base
  has_one :profile_picture, dependent: :destroy

  validates_uniqueness_of :filename
end
