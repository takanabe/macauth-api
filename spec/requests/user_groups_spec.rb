require 'spec_helper'

describe "UserGroups" do


  describe "GET /userGroups" do
    before do
      @user_group1 = FactoryGirl.create(:user_group)
      @user_group2 = FactoryGirl.create(:user_group, id: 'UG2')
      get "/user_groups"
    end

    let(:json) { JSON.parse(response.body, {:symbolize_names => true}) }

    context 'when a request is succeeded' do
      it 'returns an array of user_groups', autodoc: true do
        expect(json[0][:id]).to eq('UG1')
        expect(json[1][:id]).to eq('UG2')
      end

      it 'returns 200 OK' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
    end
  end

  describe "GET /userGroups/:id" do
    before do
      @user_group = FactoryGirl.create(:user_group)
      get "/user_groups/UG1"
    end

    let(:json) { JSON.parse(response.body,{:symbolize_names => true}) }

    context 'when a request is succeeded' do


      it 'returns 200 OK' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it 'returns user_group information hash',autodoc: true do
        expect(json[:id]).to eq('UG1')
      end
    end

    context 'when an id is deleted' do
      before do
        @user_group.destroy
      end

      it "decreases number by -1" do
        skip
      end

      it "returns 404" do
        get "/user_groups/UG1"
        expect(response.status).to eq(404)
      end
    end

    context "with non-existing user_group id" do
      it "should returns 404" do
        get "/user_groups/UG2"
        expect(response.status).to eq(404)
      end
    end
  end

  describe "POST /userGroups" do
    skip
  end

  describe "DELETE /userGroups" do
    skip
  end

  describe "PATCH /userGroups" do
    skip
  end


  describe "POST /userGroups/:id" do
    skip
  end

  describe "DELETE /userGroups/:id" do
    skip
  end

  describe "PATCH /userGroups/:id" do
    skip
  end

end
