class CreateSocialWorkers < ActiveRecord::Migration
  def change
    create_table :social_workers do |t|
      t.string :name
      t.string :email
      t.string :title

      t.timestamps
    end
  end
end
