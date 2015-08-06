require 'spec_helper'

describe "Vlans" do

  describe "GET /vlans" do
    before do
      @vlan1 = FactoryGirl.create(:vlan)
      @vlan2 = FactoryGirl.create(:vlan, id: 2000)
      get "/vlans"
    end

    let(:json) { JSON.parse(response.body, {:symbolize_names => true}) }

    context 'when a request is succeeded' do
      it 'returns an array of vlans', autodoc: true do
        expect(json[0][:id]).to eq(1000)
        expect(json[1][:id]).to eq(2000)
      end

      it 'returns 200 OK' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
    end
  end

  describe "GET /vlans/:id" do
    before do
      @vlan = FactoryGirl.create(:vlan)
      get "/vlans/1000"
    end

    let(:json) { JSON.parse(response.body,{:symbolize_names => true}) }

    context 'when a request is succeeded' do
      it 'returns 200 OK' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it 'returns vlan information hash',autodoc: true do
        expect(json[:id]).to eq(1000)
      end
    end

    context 'when an id is deleted' do
      before do
        @vlan.destroy
      end

      it "decreases number by -1" do
        skip
      end

      it "returns 404" do
        get "/vlans/1000"
        expect(response.status).to eq(404)
      end
    end

    context "with non-existing vlan id" do
      it "should returns 404" do
        get "/vlans/2000"
        expect(response.status).to eq(404)
      end
    end
  end

  describe "POST /vlans" do
  end


  describe "DELETE /vlans/:id" do
  end

  describe "PATCH /vlans/:id" do
  end

end
