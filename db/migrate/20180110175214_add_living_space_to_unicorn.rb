class AddLivingSpaceToUnicorn < ActiveRecord::Migration[5.1]
  def change
    add_column :unicorns, :living_space, :has_one
  end
end
