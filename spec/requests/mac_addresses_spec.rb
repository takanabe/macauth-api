require 'spec_helper'
require 'pry-byebug'

describe "MacAddresses" do
  let(:env_hash) do
    { "Accept" => "application/json", "Content-Type" => "application/json" }
  end
  describe "GET /mac_addresses" do
    before do
      @mac_address1 = FactoryGirl.create(:mac_address)
      @mac_address2 = FactoryGirl.create(:mac_address,id: "bbaabbccddee",user_group_id: "UG2",vlan_id: 2000, information: "macbook pro")
    end

    let(:env_hash) do
      { "Accept" => "application/json", "Content-Type" => "application/json" }
    end
    let(:json) { JSON.parse(response.body,{:symbolize_names => true}) }

    context 'when a request is succeeded' do
      it 'returns an array of Mac Addresses', autodoc: true do
        get "/mac_addresses", nil,env_hash
        expect(json[:mac_addresses][0][:id]).to eq('aabbccddeeff')
        expect(json[:mac_addresses][0][:user_group_id]).to eq('UG1')
        expect(json[:mac_addresses][0][:vlan_id]).to eq(1000)
        expect(json[:mac_addresses][0][:information]).to eq('macbook air')

        expect(json[:mac_addresses][1][:id]).to eq('bbaabbccddee')
        expect(json[:mac_addresses][1][:user_group_id]).to eq('UG2')
        expect(json[:mac_addresses][1][:vlan_id]).to eq(2000)
        expect(json[:mac_addresses][1][:information]).to eq('macbook pro')

      end

      it 'returns 200 OK' do
        get "/mac_addresses", env_hash
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
    end
  end

  describe "GET /mac_addresses/search" do
    before do
      @mac_address1 = FactoryGirl.create(:mac_address)
      @mac_address2 = FactoryGirl.create(:mac_address,id: "bbaabbccddee",user_group_id: "UG2",vlan_id: 2000, information: "macbook pro")
      @mac_address3 = FactoryGirl.create(:mac_address, id: "bbaabbccddff",user_group_id: "UG2",vlan_id: 2000, information: "macbook air")
    end

    let(:env_hash) do
      { "Accept" => "application/json", "Content-Type" => "application/json" }
    end

    let(:json) { JSON.parse(response.body,{:symbolize_names => true}) }

    context 'when a request is succeeded' do
      it 'returns 200 OK' do
        get "/mac_addresses/search?q=UG2&page=1", nil,env_hash
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it 'returns 2 data' do
        get "/mac_addresses/search?q=UG2&page=1", nil,env_hash
        expect(json[:mac_addresses].length).to eq(2)
      end

      it 'returns keyword-matched data' ,autodoc: true do
        get "/mac_addresses/search?q=UG2&page=1", nil,env_hash

        expect(json[:mac_addresses][0][:id]).to eq('bbaabbccddee')
        expect(json[:mac_addresses][0][:user_group_id]).to eq('UG2')
        expect(json[:mac_addresses][0][:vlan_id]).to eq(2000)
        expect(json[:mac_addresses][0][:information]).to eq('macbook pro')
        expect(json[:mac_addresses][1][:id]).to eq('bbaabbccddff')
        expect(json[:mac_addresses][1][:user_group_id]).to eq('UG2')
        expect(json[:mac_addresses][1][:vlan_id]).to eq(2000)
        expect(json[:mac_addresses][1][:information]).to eq('macbook air')
      end
    end
  end

  describe "GET /mac_addresses/:id" do
    before do
      @mac_address1 = FactoryGirl.create(:mac_address)
    end

    let(:env_hash) do
      { "Accept" => "application/json", "Content-Type" => "application/json" }
    end

    let(:json) { JSON.parse(response.body,{:symbolize_names => true}) }

    context 'when a request is succeeded' do

      it 'returns 200 OK' do
        get "/mac_addresses/aabbccddeeff", nil,env_hash
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it 'returns a macaddress information hash',autodoc: true do
        get "/mac_addresses/aabbccddeeff", nil,env_hash
        expect(json[:id]).to eq('aabbccddeeff')
        expect(json[:user_group_id]).to eq('UG1')
        expect(json[:vlan_id]).to eq(1000)
        expect(json[:information]).to eq('macbook air')
      end
    end

    context 'when an id is deleted' do
      before do
        @mac_address1.destroy
      end

      it "should returns 404" do
        get "/mac_addresses/aabbccddeeff",nil, env_hash
        expect(response.status).to eq(404)
      end
    end

    context "with non-existing mac_address id" do
      it "should returns 404" do
        get "/mac_address/zzzzzzzzzzzz", nil, env_hash
        expect(response.status).to eq(404)
      end
    end
  end


  describe "POST /mac_addresses" do
    let(:env_hash) do
      { "Accept" => "application/json", "Content-Type" => "application/json" }
    end

    context "with valid parameters" do
      before do
        @params = {mac_addresses: [FactoryGirl.attributes_for(:mac_address)]}
      end

      it "creates a new mac_address and return 201 Created" do
        post "/mac_addresses", @params
        expect(response).to be_success
        expect(response.status).to eq(201)
      end

      it "increases the number of Mac Addresses record" do
        expect{
          post "/mac_addresses", @params
        }.to change(MacAddress, :count).by(1)
      end
    end

    context "with multiple valid parameters" do
      before do
        @mac_address1 = FactoryGirl.attributes_for(:mac_address)
        @mac_address2 = FactoryGirl.attributes_for(:mac_address,id: "aaaabbccddee",user_group_id: "UG2",vlan_id: 2000, information: "macbook pro")
        @mac_address3 = FactoryGirl.attributes_for(:mac_address,id: "aabbccddeeee",user_group_id: "UG3",vlan_id: 3000, information: "macbook")

        @params = {mac_addresses: [@mac_address1, @mac_address2, @mac_address3]}
      end

      it "creates a new mac_address and return 201 Created",autodoc: true do
        post "/mac_addresses", @params.to_json, env_hash
        expect(response).to be_success
        expect(response.status).to eq(201)
      end

      it "increases the number of Mac Addresses record" do
        expect{
          post "/mac_addresses", @params
        }.to change(MacAddress, :count).by(3)
      end
    end

    context "with invalid request" do
      before do
        @params = {a: "invalid params"}
        post "/mac_addresses", @params
      end

      it "returns 400 Bad Request" do
        expect(response).not_to be_success
        expect(response.status).to eq(400)
      end

      it "does't change the number of mac_addresses" do
        expect{
          post "/mac_addresses", @params
        }.not_to change(MacAddress, :count)
      end
    end

    context "with invalid parameter format" do
      before do
        @params = {mac_addresses: [FactoryGirl.attributes_for(:mac_address)]}
        @params[:mac_addresses][0][:id] = "invalid id length"
        post "/mac_addresses", @params
      end

      it "returns 422 Bad Request" do
        expect(response).not_to be_success
        expect(response.status).to eq(422)
      end

      it "does't change the number of mac_addresses" do
        expect{
          post "/mac_addresses", @params
        }.not_to change(MacAddress, :count)
      end
    end

    context "with invalid JSON structure" do
      before do
        @params = '{"a": 1'
        post "/mac_addresses", @params
      end

      it "returns 400 Bad Request" do
        expect(response).not_to be_success
        expect(response.status).to eq(400)
      end
    end
  end

  #NOTE We don't implement bulk delete function
  # describe "DELETE /mac_addresses" do
  #   context 'with valid request' do
  #     it 'returns 204 No Content' do
  #       skip
  #     end
  #   end
  #
  #   context 'with invalid request' do
  #     it 'returns 400 Bad Request' do
  #       skip
  #     end
  #   end
  #
  #   context 'when the resource is not found' do
  #     it 'returns 404 Not Found' do
  #       skip
  #     end
  #   end
  #
  #   context 'when the error occurred internal server' do
  #     it 'returns 500 Internal Server Error' do
  #       skip
  #     end
  #   end
  # end

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
      before do
        delete '/mac_addresses/aabbccddeeff',nil,env_hash
      end

      it 'deletes a target resource and returns 204 No Content', autodoc: true do
        expect(response).to be_success
        expect(response.status).to eq(204)
      end
    end

    context 'with invalid request' do
      before do
        delete "/mac_addresses/afafaf"
      end
      it 'returns 400 Bad Request' do
        expect(response).not_to be_success
        expect(response.status).to eq(404)
      end
    end

    context 'when the error occurred internal server' do
      it 'returns 500 Internal Server Error' do
        skip
      end
    end

  end

  describe "PATCH /mac_addresses/:id" do
    before do
      @mac_address = FactoryGirl.create(:mac_address)
      @params = {mac_address: FactoryGirl.attributes_for(:mac_address)}
    end

    subject {@mac_address}

    context 'with valid request' do
      before do
        patch '/mac_addresses/aabbccddeeff',@params.to_json, env_hash
      end
      it 'updates a target resource and returns 204 No Content', autodoc: true do
        expect(response).to be_success
        expect(response.status).to eq(204)
      end
    end

    context 'with invalid request' do
      before do
        @params = {a: "invalid request"}
        patch '/mac_addresses/aabbccddeeff', @params
      end

      it 'returns 400 Bad Request' do
        expect(response).not_to be_success
        expect(response.status).to eq(400)
      end
    end

    context 'with invalid id length request' do
      before do
        @params = {mac_address: FactoryGirl.attributes_for(:mac_address,id: "invalid id length")}
        patch '/mac_addresses/aabbccddeeff', @params
      end

      it 'returns 422 Bad Request' do
        expect(response).not_to be_success
        expect(response.status).to eq(422)
      end
    end

    context 'when the resource is not found' do
      before do
        patch '/mac_addresses/invlid', @params
      end
      it 'returns 404 Not Found' do
        expect(response).not_to be_success
        expect(response.status).to eq(404)
      end
    end

    context 'when the error occurred internal server' do
      it 'returns 500 Internal Server Error' do
        skip
      end
    end
  end

end
