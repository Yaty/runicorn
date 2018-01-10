class CreateUnicorns < ActiveRecord::Migration[5.1]
  def change
    create_table :unicorns do |t|
      t.string :name
      t.integer :age
      t.boolean :sex # true for female, false for male
      t.integer :health

      t.timestamps
    end
  end
end
