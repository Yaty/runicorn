class AddUnicornToAptitude < ActiveRecord::Migration[5.1]
  def change
    add_reference :unicorns, :aptitude, foreign_key: true
  end
end
