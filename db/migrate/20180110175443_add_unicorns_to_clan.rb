class AddUnicornsToClan < ActiveRecord::Migration[5.1]
  def change
    add_column :clans, :unicorns, :has_many
  end
end
