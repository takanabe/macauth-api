# == Schema Information
#
# Table name: user_groups
#
#  id         :string(255)      not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserGroup < ActiveRecord::Base
  # has_many :mac_addresses, dependent: :destroy
end
