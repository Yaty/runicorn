class AddClanToLivingSpace < ActiveRecord::Migration[5.1]
  def change
    add_column :living_spaces, :clan, :has_one
  end
end
