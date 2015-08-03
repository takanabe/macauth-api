require 'spec_helper'

describe "MacAddresses" do
  describe "GET /mac_addresses" do
    before do
      @mac_address1 = FactoryGirl.create(:mac_address)
      @mac_address2 = FactoryGirl.create(:mac_address,id: "aabbccddeegg",user_group_id: "UG2",vlan_id: 2000, information: "macbook pro")
      get "/mac_addresses"
    end

    let(:json) { JSON.parse(response.body,{:symbolize_names => true}) }

    context 'when a request is succeeded' do
      it 'returns array of Mac Addresses', autodoc: true do
        expect(json[0][:id]).to eq('aabbccddeeff')
        expect(json[0][:user_group_id]).to eq('UG1')
        expect(json[0][:vlan_id]).to eq(1000)
        expect(json[0][:information]).to eq('macbook air')

        expect(json[1][:id]).to eq('aabbccddeegg')
        expect(json[1][:user_group_id]).to eq('UG2')
        expect(json[1][:vlan_id]).to eq(2000)
        expect(json[1][:information]).to eq('macbook pro')
      end

      it 'returns 200 OK' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
    end
  end

  #todo:  single get,create, delete, update api
  describe "GET /mac_addresses/:id" do
    before do
      @mac_address1 = FactoryGirl.create(:mac_address)
      #TODO: colon
      get "/mac_addresses/aabbccddeeff"
    end

    let(:json) { JSON.parse(response.body,{:symbolize_names => true}) }

    context 'when a request is succeeded' do

      it 'should return 200 OK' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it 'should return macaddress info hash' do
        #TODO: refacter
        expect(json[:id]).to eq('aabbccddeeff')
        expect(json[:user_group_id]).to eq('UG1')
        expect(json[:vlan_id]).to eq(1000)
        expect(json[:information]).to eq('macbook air')
      end
    end

    context 'when a request is succeeded' do
      before do
        @mac_address1.destroy
      end

      it "should returns 404" do
        get "/mac_address/aabbccddeeff"
        expect(response.status).to eq(404)
      end
    end

    context 'with invalid request' do
      it 'returns 400 Bad Request' do
        skip
      end
    end

    context "with non-existing mac_address id" do
      it "should returns 404" do
        get "/mac_address/zzzzzzzzzzzz"
        expect(response.status).to eq(404)
      end
    end

    context 'when the error occurred internal server' do
      it 'returns 500 Internal Server Error' do
        skip
      end
    end
  end

  describe "POST /mac_addresses" do
    context "with valid parameters" do
      before do
        @params = {mac_address: FactoryGirl.attributes_for(:mac_address)}
      end

      it "should create a new mac_address and return 201 Created" do
        post "/mac_addresses", @params
        expect(response).to be_success
        expect(response.status).to eq(201)
      end

      it "increase " do
        expect{
          post "/mac_addresses", @params
        }.to change(MacAddress, :count).by(1)
      end
    end

    context "with invalid parameters" do
      before do
        @params = {mac_address: FactoryGirl.create(:mac_address)}
        @params = {mac_address: {invalid_id: 400}}
      end

      it "return error message" do
        skip
      end

      it "returns 400 Bad Rquest" do
        skip
      end

      it "returns 422 Bad Request" do
        post "/mac_addresses", @params
        expect(response).not_to be_success
        expect(response.status).to eq(422)
      end

      it "does't change the number of mac_addresses" do
        expect{
          post "/mac_addresses", @params
        }.not_to change(MacAddress, :count)
      end

    end
  end

  describe "DELETE /mac_addresses" do
    context 'with valid request' do
      it 'returns 204 No Content' do
        skip
      end
    end

    context 'with invalid request' do
      it 'returns 400 Bad Request' do
        skip
      end
    end

    context 'when the resource is not found' do
      it 'returns 404 Not Found' do
        skip
      end
    end

    context 'when the error occurred internal server' do
      it 'returns 500 Internal Server Error' do
        skip
      end
    end
  end


  # 必要か？
  describe "POST /mac_addresses/:id" do
    context 'when the request is succeeded' do
      it "should create a new mac_address and return 201 Created" do
        skip
      end
    end

    context 'with invalid request' do
      it 'returns 400 Bad Request' do
        skip
      end
    end

    context 'when the requested is not found' do
      it 'returns 404 Not Found' do
        skip
      end
    end

    context 'when the error occurred internal server' do
      it 'returns 500 Internal Server Error' do
        skip
      end
    end
  end

  describe "DELETE /mac_addresses/:id" do
    before do
      @mac_address1 = FactoryGirl.create(:mac_address)
      @mac_address = MacAddress.all
    end

    subject {@mac_address}
    it "decreases the number of mac_addresses by -1" do
      expect{
        delete '/mac_addresses/aabbccddeeff'
      }.to change(MacAddress, :count).by(-1)
    end

    context 'with valid request' do
      it 'returns 204 No Content' do
        skip
      end
    end

    context 'with invalid request' do
      it 'returns 400 Bad Request' do
        skip
      end
    end

    context 'when the resource is not found' do
      it 'returns 404 Not Found' do
        skip
      end
    end

    context 'when the error occurred internal server' do
      it 'returns 500 Internal Server Error' do
        skip
      end
    end

  end

  describe "PATCH /mac_addresses/:id" do
    context 'with valid request' do
      it 'returns 204 No Content' do
        skip
      end
    end

    context 'with invalid request' do
      it 'returns 400 Bad Request' do
        skip
      end
    end

    context 'when the resource is not found' do
      it 'returns 404 Not Found' do
        skip
      end
    end

    context 'when the error occurred internal server' do
      it 'returns 500 Internal Server Error' do
        skip
      end
    end
  end

end
