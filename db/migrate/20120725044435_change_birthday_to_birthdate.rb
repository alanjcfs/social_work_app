class ChangeBirthdayToBirthdate < ActiveRecord::Migration
  def up
  	rename_column :clients, :birthday, :birthdate
  end

  def down
  end
end
