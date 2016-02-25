class Dose < ActiveRecord::Base
  belongs_to :user
  belongs_to :medicine
end
