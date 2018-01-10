class AddLivingSpaceToUnicorn < ActiveRecord::Migration[5.1]
  def change
    add_reference :unicorns, :living_space, foreign_key: true
  end
end
