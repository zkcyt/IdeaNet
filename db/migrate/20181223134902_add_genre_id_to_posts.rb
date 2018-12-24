class AddGenreIdToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :genre_id, :integer
  end
end
