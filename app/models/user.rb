#
class User < ActiveRecord::Base
  include Authentication
  has_many :doses
  has_many :medicines, -> { distinct }, through: :doses
end
