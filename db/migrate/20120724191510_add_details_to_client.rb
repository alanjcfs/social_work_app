class AddDetailsToClient < ActiveRecord::Migration
  def change
    add_column :clients, :case_number, :integer
    add_column :clients, :case_date, :datet
  end
end
