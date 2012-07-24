class AddDetailsToClient < ActiveRecord::Migration
  def change
    add_column :clients, :case_number, :integer
    add_column :clients, :case_date, :date
    add_column :clients, :case_completed, :date
    add_column :clients, :gender, :string
  end
end
