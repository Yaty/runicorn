class AddLivingSpacesToClan < ActiveRecord::Migration[5.1]
  def change
    add_column :clans, :living_spaces, :has_many
  end
end
