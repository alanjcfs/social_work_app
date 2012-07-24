class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.text :intake
      t.integer :social_worker_id

      t.timestamps
    end
  end
end
