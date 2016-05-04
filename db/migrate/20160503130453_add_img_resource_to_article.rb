class AddImgResourceToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :image_resource, :string
  end
end
