class CreatePoisons < ActiveRecord::Migration[5.1]
  def change
    create_table :poisons do |t|
      t.string :name
      t.integer :power
      t.integer :duration

      t.timestamps
    end
  end
end
