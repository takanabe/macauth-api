# == Schema Information
#
# Table name: vlans
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vlan < ActiveRecord::Base
  has_many :mac_addresses#, dependent: :destroy


  VALID_VLAN_ID_REGEX = /\A\d{1,4}\z/
  validates :id, presence: true, length: { in: 1..4 }, format: {with: VALID_VLAN_ID_REGEX},
             uniqueness: true, numericality: {greater_than: 0}

end
