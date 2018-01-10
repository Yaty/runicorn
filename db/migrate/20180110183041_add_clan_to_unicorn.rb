class AddClanToUnicorn < ActiveRecord::Migration[5.1]
  def change
    add_reference :unicorns, :clan, foreign_key: true
  end
end
