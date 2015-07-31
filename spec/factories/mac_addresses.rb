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

FactoryGirl.define do
  factory :mac_address do
    id "aabbccddeeff"
    user_group_id "ug1"
    vlan_id 1000
    information "macbook air"
  end
end
