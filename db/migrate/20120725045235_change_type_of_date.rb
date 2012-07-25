class ChangeTypeOfDate < ActiveRecord::Migration
  def up
  	change_table :clients do |t|
    	t.change :case_date, :date
    end
  end

  def down
  	change_table :clients do |t|
  		t.change :case_date, :datet 
  	end
  end
end
