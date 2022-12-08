class RecruiterSerializer < ActiveModel::Serializer
  # attributes :jobs
  # attributes :id, :email, :password_digest
  has_many :jobs
end
