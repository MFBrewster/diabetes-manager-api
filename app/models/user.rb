#
class User < ActiveRecord::Base
  include Authentication
  has_many :doses
end
