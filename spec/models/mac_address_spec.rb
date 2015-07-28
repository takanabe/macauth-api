require 'spec_helper'

describe MacAddress do
  before {@mac_address = FactoryGirl.create(:mac_address)}

  subject{@mac_address}

  it {is_expected.to respond_to(:id)}
  it {is_expected.to respond_to(:ug_id)}
  it {is_expected.to respond_to(:vlan_id)}
  it {is_expected.to respond_to(:information)}

  context "without id" do
    before {@mac_address.id = '  '}
    it {is_expected.not_to be_valid}
  end

  context "without ug_id" do
    before {@mac_address.ug_id = '  '}
    it {is_expected.not_to be_valid}
  end

  context "when length of id is not 12" do
    before {@mac_address.id = "a" * 15}
    it {is_expected.not_to be_valid}
  end


  context "with small letters" do
    before {@mac_address.id = "a" * 12}
    it {is_expected.not_to be_valid}
  end

  describe "when id is already taken" do
    before do
      mac_address_with_same_id = @mac_address.dup
    end

    it {is_expected.to validate_uniqueness_of(:id)}
  end

end
