class AddUserToClan < ActiveRecord::Migration[5.1]
  def change
    add_reference :clans, :unicorn, foreign_key: true
  end
end
