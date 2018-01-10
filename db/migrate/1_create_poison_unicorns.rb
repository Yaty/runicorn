class CreatePoisonUnicorns < ActiveRecord::Migration[5.1]
  def change
    create_table :poisons do |t|
      t.string :name
      t.integer :power
      t.integer :duration

      t.timestamps
    end

    create_table :unicorns do |t|
      t.string :name
      t.integer :age
      t.boolean :sex # true for female, false for male
      t.integer :health

      t.timestamps
    end

    create_table :poison_unicorns do |t|
      t.belongs_to :unicorn, index: true
      t.belongs_to :poison, index: true

      t.timestamps
    end
  end
end
