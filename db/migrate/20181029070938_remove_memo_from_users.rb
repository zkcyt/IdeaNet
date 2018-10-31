class RemoveMemoFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :memo, :text
  end
end
