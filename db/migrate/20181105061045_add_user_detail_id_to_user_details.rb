class AddUserDetailIdToUserDetails < ActiveRecord::Migration[5.1]
  def change
    add_column :user_details, :user_detail_id, :integer
  end
end
