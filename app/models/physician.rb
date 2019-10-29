class Physician < ApplicationRecord
  has_many :office_locations, inverse_of: :physician
  accepts_nested_attributes_for :office_locations, reject_if: :all_blank, allow_destroy: true
end
