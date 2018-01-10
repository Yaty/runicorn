class AddPoisonsToUnicorn < ActiveRecord::Migration[5.1]
  def change
    add_column :unicorns, :poisons, :has_many
  end
end
