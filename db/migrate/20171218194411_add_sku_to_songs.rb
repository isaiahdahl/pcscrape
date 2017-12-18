class AddSkuToSongs < ActiveRecord::Migration[5.1]
  def change
    add_column :songs, :sku, :integer
  end
end
