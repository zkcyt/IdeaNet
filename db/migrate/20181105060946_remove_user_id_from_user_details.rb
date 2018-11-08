class RemoveUserIdFromUserDetails < ActiveRecord::Migration[5.1]
  def change
    remove_column :user_details, :user_id, :integer
  end
end
