class DoseSerializer < ActiveModel::Serializer
  attributes :id, :size, :label, :time, :medicine
end

# find a way to get info about associated medicines into this serializer
