class MedicineSerializer < ActiveModel::Serializer
  attributes :id, :name, :unit_name, :notes, :created_at, :updated_at
end
