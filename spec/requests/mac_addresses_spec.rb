require 'spec_helper'

describe "MacAddresses" do
  describe "GET /mac_addresses" do
    before do
      @mac_address1 = FactoryGirl.create(:mac_address)
      @mac_address2 = FactoryGirl.create(:mac_address,id: "aa:bb:cc:dd:ee:gg")
      get "/mac_addresses"
    end

    let(:json) { JSON.parse(response.body,{:symbolize_names => true}) }

    context 'when a request is succeeded' do

      it 'should return 200 OK' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it 'should return array of ' do
        #TODO: refacter
        expect(json[0][:id]).to eq('aa:bb:cc:dd:ee:ff')
        expect(json[0][:ug_id]).to eq('ug1')
        expect(json[0][:vlan_id]).to eq('vlan1')
        expect(json[0][:information]).to eq('macbook air')

        expect(json[1][:id]).to eq('aa:bb:cc:dd:ee:gg')
        expect(json[1][:ug_id]).to eq('ug1')
        expect(json[1][:vlan_id]).to eq('vlan1')
        expect(json[1][:information]).to eq('macbook air')
      end

    end
  end

  describe "POST /macaddrs" do
    skip
  end

  describe "DELETE /macaddrs" do
    skip
  end

  describe "PATCH /macaddrs" do
    skip
  end

  #todo:  single get,create, delete, update api
  describe "GET /macaddrs/:id" do
    before do
      @mac_address1 = FactoryGirl.create(:mac_address)
      #TODO: colon
      get "/mac_addresses/aa:bb:cc:dd:ee:ff"
    end

    let(:json) { JSON.parse(response.body,{:symbolize_names => true}) }

    context 'when a request is succeeded' do

      it 'should return 200 OK' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it 'should return macaddress info hash' do
        #TODO: refacter
        expect(json[:id]).to eq('aa:bb:cc:dd:ee:ff')
        expect(json[:ug_id]).to eq('ug1')
        expect(json[:vlan_id]).to eq('vlan1')
        expect(json[:information]).to eq('macbook air')
      end
    end

    context 'when a request is succeeded' do
      before do
        @mac_address1.destroy
      end

      it "should returns 404" do
        get "/mac_address/aa:bb:cc:dd:ee:ff"
        expect(response.status).to eq(404)
      end
    end

    context "with non-existing mac_address id" do

      it "should returns 404" do
        get "/mac_address/zz:zz:zz:zz:zz:zz"
        expect(response.status).to eq(404)
      end
    end
  end

  describe "POST /macaddrs/:id" do
    skip
  end

  describe "DELETE /macaddrs/:id" do
    skip
  end

  describe "PATCH /macaddrs/:id" do
    skip
  end

end
