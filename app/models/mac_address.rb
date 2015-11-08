# == Schema Information
#
# Table name: mac_addresses
#
#  id            :string(255)      not null, primary key
#  user_group_id :string(255)      not null
#  vlan_id       :integer
#  information   :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class MacAddress < ActiveRecord::Base
  belongs_to :vlan
  belongs_to :user_group

  VALID_ID_REGEX = /\A[a-z0-9]{12}\z/
  VALID_USER_GROUP_ID_REGEX = /\A[A-Z0-9-]+\z/

  validates :id, presence: true, length: {is: 12}, format: {with: VALID_ID_REGEX},
            uniqueness: true

  validates :user_group_id, presence: true, format: {with: VALID_USER_GROUP_ID_REGEX}
end
