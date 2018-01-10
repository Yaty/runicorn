class AddClanToLivingSpace < ActiveRecord::Migration[5.1]
  def change
    add_reference :living_spaces, :clan, foreign_key: true
  end
end
