class AddImageUrlToFighters < ActiveRecord::Migration[6.1]
  def change
    add_column :fighters, :image_url, :string
  end
end
