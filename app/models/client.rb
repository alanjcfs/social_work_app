class Client < ActiveRecord::Base
  attr_accessible :intake, :social_worker_id, :gender, :case_date, :birthdate
  attr_accessible :email, :case_number, :case_completed
  belongs_to :social_worker
end
