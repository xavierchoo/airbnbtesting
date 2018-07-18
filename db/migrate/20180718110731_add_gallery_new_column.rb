class AddGalleryNewColumn < ActiveRecord::Migration[5.2]
  def change
  	add_column :galleries, :title, :string
  	add_column :galleries, :description, :string
  end
end
