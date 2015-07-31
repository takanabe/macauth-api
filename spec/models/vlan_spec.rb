# == Schema Information
#
# Table name: vlans
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Vlan do
  let(:vlan) {FactoryGirl.create(:vlan)}

  subject{vlan}

  it {is_expected.to respond_to(:id)}

  context "with valid length id" do
    it {is_expected.to be_valid}
  end

  context "with invalid length of id" do
    before{vlan.id = '11111'}
    it {is_expected.not_to be_valid}
  end

  context "with invalid format of id" do
    before{vlan.id = 'invalid_id'}
    it {is_expected.not_to be_valid}
  end

  context "without id" do
    before {vlan.id = '  '}
    it {is_expected.not_to be_valid}
  end

  context "with id existing already" do
    before do
      vlan_with_same_id = vlan.dup
    end

    it {is_expected.to validate_uniqueness_of(:id)}
  end

end
