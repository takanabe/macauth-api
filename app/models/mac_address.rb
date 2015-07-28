class MacAddress < ActiveRecord::Base
  VALID_ID_REGEX = /\A[A-Z0-9]{12}\z/
  validates :id, presence: true, length: {is: 12}, format: {with: VALID_ID_REGEX},
            uniqueness: true
  validates :ug_id, presence: true
end
