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

require 'spec_helper'

describe MacAddress do
  before {@mac_address = FactoryGirl.create(:mac_address)}

  subject{@mac_address}

  it {is_expected.to respond_to(:id)}
  it {is_expected.to respond_to(:user_group_id)}
  it {is_expected.to respond_to(:vlan_id)}
  it {is_expected.to respond_to(:information)}

  context 'with valid parameters' do
    it {expect(@mac_address.id).to eq('aabbccddeeff')}
    it {expect(@mac_address.user_group_id).to eq('ug1')}
    it {expect(@mac_address.vlan_id).to eq(1000)}
    it {expect(@mac_address.information).to eq('macbook air')}
  end

  context "without id" do
    before {@mac_address.id = '  '}
    it {is_expected.not_to be_valid}
  end

  context "without user_group_id" do
    before {@mac_address.user_group_id = '  '}
    it {is_expected.not_to be_valid}
  end

  context "when length of id is not 12" do
    before {@mac_address.id = "a" * 15}
    it {is_expected.not_to be_valid}
  end


  context "with capital letters" do
    before {@mac_address.id = "A" * 12}
    it {is_expected.not_to be_valid}
  end

  describe "when id is already taken" do
    before do
      mac_address_with_same_id = @mac_address.dup
    end

    it {is_expected.to validate_uniqueness_of(:id)}
  end

end
