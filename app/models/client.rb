class Client < ActiveRecord::Base
  attr_accessible :intake, :social_worker_id, :gender, :case_date
  belongs_to :social_worker
end
