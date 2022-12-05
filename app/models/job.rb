class Job < ApplicationRecord
    belongs_to :recruiter

#     NON_VALIDATABLE_ATTRS = ["id", "created_at", "updated_at"] #or any other attribute that does not need validation
#     VALIDATABLE_ATTRS = Job.attribute_names.reject{|attr| NON_VALIDATABLE_ATTRS.include?(attr)}

#   validates_presence_of VALIDATABLE_ATTRS
validates :company_name, :title, :description, :requirements, presence: true

end