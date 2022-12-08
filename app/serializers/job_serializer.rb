class JobSerializer < ActiveModel::Serializer
  attributes :id, :company, :title, :description
  belongs_to :recruiter
end
