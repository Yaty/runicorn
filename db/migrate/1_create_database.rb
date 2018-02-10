class CreateDatabase < ActiveRecord::Migration[5.1]
  def change
    create_table :clans do |t|
      t.string :name
      t.belongs_to :unicorn, index: true

      t.timestamps
    end

    create_table :living_spaces do |t|
      t.belongs_to :clan, index: true
      t.string :name
      t.float :latitude
      t.float :longitude
      t.integer :width
      t.integer :height

      t.timestamps
    end

    create_table :unicorns do |t|
      t.belongs_to :clan, index: true
      t.belongs_to :living_space, index: true
      t.string :name
      t.integer :age
      t.boolean :sex # true for female, false for male
      t.integer :health

      t.timestamps
    end

    create_table :fights do |t|
      t.string :name
      t.belongs_to :firstUnicorn
      t.belongs_to :secondUnicorn
    end

    create_table :poisons do |t|
      t.string :name
      t.integer :power
      t.integer :duration

      t.timestamps
    end

    create_table :poison_unicorns do |t|
      t.belongs_to :unicorn, index: true
      t.belongs_to :poison, index: true

      t.timestamps
    end

    create_table :aptitudes do |t|
      t.belongs_to :unicorn, index: true
      t.string :name
      t.integer :level

      t.timestamps
    end
  end
end
