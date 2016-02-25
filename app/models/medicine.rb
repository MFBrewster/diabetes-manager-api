class Medicine < ActiveRecord::Base
  has_many :doses
end
