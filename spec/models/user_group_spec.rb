# == Schema Information
#
# Table name: user_groups
#
#  id         :string(255)      not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe UserGroup do

  let(:user_group) {FactoryGirl.create(:user_group)}


  subject{user_group}

  it {is_expected.to respond_to(:id)}

  context "with invalid format of id" do
    before{user_group.id = 'invalid_id'}
    it {is_expected.not_to be_valid}
  end

  context "without id" do
    before {user_group.id = '  '}
    it {is_expected.not_to be_valid}
  end

  context "with id existing already" do
    before do
      user_group_with_same_id = user_group.dup
    end

    it {is_expected.to validate_uniqueness_of(:id)}
  end
end
