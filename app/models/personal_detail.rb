class PersonalDetail < ApplicationRecord
  belongs_to :bio, polymorphic: true

  has_many :work_details
  has_many :study_details
  has_many :contact_details, inverse_of: :personal_detail

  accepts_nested_attributes_for :work_details, allow_destroy: true
  accepts_nested_attributes_for :contact_details,  allow_destroy: true
  accepts_nested_attributes_for :study_details, allow_destroy: true


end
