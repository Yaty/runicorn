class AddUnicornsToLivingSpace < ActiveRecord::Migration[5.1]
  def change
    add_column :living_spaces, :unicorns, :has_many
  end
end
