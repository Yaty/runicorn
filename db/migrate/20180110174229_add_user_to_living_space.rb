class AddUserToLivingSpace < ActiveRecord::Migration[5.1]
  def change
    add_column :living_spaces, :unicorn, :has_one
  end
end
