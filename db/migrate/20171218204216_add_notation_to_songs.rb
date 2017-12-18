class AddNotationToSongs < ActiveRecord::Migration[5.1]
  def change
    add_column :songs, :notation, :string
  end
end
