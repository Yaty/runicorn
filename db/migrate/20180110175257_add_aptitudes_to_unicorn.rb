class AddAptitudesToUnicorn < ActiveRecord::Migration[5.1]
  def change
    add_column :unicorns, :aptitudes, :has_many
  end
end
