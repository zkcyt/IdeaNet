class AddPostIdToGenres < ActiveRecord::Migration[5.1]
  def change
    add_column :genres, :post_id, :integer
  end
end
