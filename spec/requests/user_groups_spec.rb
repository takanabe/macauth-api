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
    context "with valid parameters" do
      before do
        @params = {user_group: [FactoryGirl.attributes_for(:user_group)]}
      end

      it "creates a new user_group and return 201 Created",autodoc: true do
        post "/user_groups", @params
        expect(response).to be_success
        expect(response.status).to eq(201)
      end

      it "increases the number of Mac Addresses record" do
        expect{
          post "/user_groups", @params
        }.to change(UserGroup, :count).by(1)
      end
    end

    context "with multiple valid parameters" do
      before do
        @user_group1 = FactoryGirl.attributes_for(:user_group)
        @user_group2 = FactoryGirl.attributes_for(:user_group,id: 'UG2')
        @user_group3 = FactoryGirl.attributes_for(:user_group,id: 'UG3')

        @params = {user_group: [@user_group1, @user_group2, @user_group3]}
      end

      it "creates a new user_group and return 201 Created",autodoc: true do
        post "/user_groups", @params
        expect(response).to be_success
        expect(response.status).to eq(201)
      end

      it "increases the number of UserGroup record" do
        expect{
          post "/user_groups", @params
        }.to change(UserGroup, :count).by(3)
      end
    end

    context "with invalid request" do
      before do
        @params = {a: "invalid params"}
        post "/user_groups", @params
      end

      it "returns 400 Bad Request" do
        expect(response).not_to be_success
        expect(response.status).to eq(400)
      end

      it "does't change the number of user groups" do
        expect{
          post "/user_groups", @params
        }.not_to change(UserGroup, :count)
      end
    end

    context "with invalid parameter format" do
      before do
        @params = {user_group: [FactoryGirl.attributes_for(:user_group),id: "invalid id $%"]}
        post "/user_groups", @params
      end

      it "returns 422 Bad Request" do
        expect(response).not_to be_success
        expect(response.status).to eq(422)
      end

      it "does't change the number of user_groups" do
        expect{
          post "/user_groups", @params
        }.not_to change(UserGroup, :count)
      end
    end

    context "with invalid JSON structure" do
      before do
        @params = '{"a": 1'
        post "/user_groups", @params
      end

      it "returns 400 Bad Request" do
        expect(response).not_to be_success
        expect(response.status).to eq(400)
      end
    end
  end


  describe "DELETE /userGroups/:id" do
    before do
      @user_group1 = FactoryGirl.create(:user_group)
      @user_group = UserGroup.all
    end

    subject {@user_group}
    it "decreases the number of user_groups by -1" do
      expect{
        delete '/user_groups/UG1'
      }.to change(UserGroup, :count).by(-1)
    end

    context 'with valid request' do
      before do
        delete '/user_groups/UG1'
      end

      it 'returns 204 No Content' do
        expect(response).to be_success
        expect(response.status).to eq(204)
      end
    end

    context 'with invalid request' do
      before do
        delete "/user_groups/invalid_ug"
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

  describe "PATCH /userGroups/:id" do
    before do
      @user_group = FactoryGirl.create(:user_group)
      @params = {user_group: [FactoryGirl.attributes_for(:user_group)]}
    end

    subject {@user_group}

    context 'with valid request' do
      before do
        patch '/user_groups/UG1', @params
      end
      it 'returns 204 No Content' do
        expect(response).to be_success
        expect(response.status).to eq(204)
      end
    end

    context 'with invalid request' do
      before do
        @params = {a: "invalid request"}
        patch '/user_groups/UG1', @params
      end

      it 'returns 400 Bad Request' do
        expect(response).not_to be_success
        expect(response.status).to eq(400)
      end
    end

    context 'with invalid id length request' do
      before do
        @params = {user_group: [FactoryGirl.attributes_for(:user_group,id: "invalid id length")]}
        patch '/user_groups/UG1', @params
      end

      it 'returns 422 Bad Request' do
        expect(response).not_to be_success
        expect(response.status).to eq(422)
      end
    end

    context 'when the resource is not found' do
      before do
        patch '/user_groups/invlid', @params
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
