class CreateLivingSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :living_spaces do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
