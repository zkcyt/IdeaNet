class CreateUserDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :user_details do |t|
      t.text :nickname
      t.text :profile
      t.integer :user_id

      t.timestamps
    end
  end
end
