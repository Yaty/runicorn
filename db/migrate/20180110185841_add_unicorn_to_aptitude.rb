class AddUnicornToAptitude < ActiveRecord::Migration[5.1]
  def change
    add_reference :aptitudes, :unicorn, foreign_key: true
  end
end
