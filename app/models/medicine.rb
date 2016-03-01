class Medicine < ActiveRecord::Base
  has_many :doses
  has_many :users, through: :doses
end
