class CreateAptitudes < ActiveRecord::Migration[5.1]
  def change
    create_table :aptitudes do |t|
      t.integer :type
      t.integer :level

      t.timestamps
    end
  end
end
