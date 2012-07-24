class SocialWorker < ActiveRecord::Base
  attr_accessible :email, :name, :title
  has_many :clients
end
