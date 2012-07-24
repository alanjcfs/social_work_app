class AddBirthdayToClient < ActiveRecord::Migration
  def change
    add_column :clients, :birthday, :date
  end
end
