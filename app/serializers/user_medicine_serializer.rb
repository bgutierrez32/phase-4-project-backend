class UserMedicineSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :medicine_id, :purchased

  has_one :user
  has_one :medicine
end
