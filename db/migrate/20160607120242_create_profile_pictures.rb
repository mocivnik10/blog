class CreateProfilePictures < ActiveRecord::Migration
  def change
    create_table :profile_pictures do |t|
      t.references :user, index: true, foreign_key: true
      t.references :avatar, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
