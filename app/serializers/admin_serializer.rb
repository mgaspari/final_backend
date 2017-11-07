class AdminSerializer < ActiveModel::Serializer
  attributes :id, :name, :street, :zip_code, :state, :city, :phone_number, :username, :password_digest
end
