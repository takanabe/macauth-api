# == Schema Information
#
# Table name: user_groups
#
#  id         :string(255)      not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :user_group do
    id 'userGroup1'
  end
end
