# == Schema Information
#
# Table name: vlans
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :vlan do
    id 1000
  end

end
