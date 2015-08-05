class UserGroupsController < ApplicationController
  before_action :set_user_group, only: [:show, :update, :destroy]

  # GET /user_groups
  def index
    @user_groups = UserGroup.all

    render json: @user_groups
  end

  def show
    render json: @user_groups
  end

  private

    def set_user_group
      @user_groups = UserGroup.find(params[:id])
    end

    def user_group_params
      # params.require(:mac_address).map { |m| m.permit(:id, :user_group_id, :vlan_id, :information)}
    end

end
