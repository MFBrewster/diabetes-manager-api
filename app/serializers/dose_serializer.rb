class DoseSerializer < ActiveModel::Serializer
  attributes :id, :size, :label, :time, :medicine
end
