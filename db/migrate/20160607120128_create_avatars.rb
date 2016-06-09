class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.string :filename

      t.timestamps null: false
    end
  end
end
