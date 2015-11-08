class UserGroupsController < ApplicationController
  before_action :set_user_group, only: [:show, :update, :destroy]

  # GET /user_groups
  def index
    @user_groups = UserGroup.all

    render json: {user_groups: @user_groups}
  end

  def show
    render json: @user_groups
  end

  def create
    user_groups = []
    user_group_params_array = user_group_params

    begin
      ActiveRecord::Base.transaction do
        user_group_params_array.each do |p|
          user_groups.push UserGroup.new(p)
        end
        raise "UserGroup Transaction Failed" unless (UserGroup.import user_groups).failed_instances.size == 0
      end
      render json: { succeeded: '201 Created' }, status: 201
    rescue => e
      render json: { error: '422 Unprocessable Entity'}, status: :unprocessable_entity
    end
  end

  def destroy
    @user_groups.destroy

    head :no_content
  end

  def update
    @user_group = UserGroup.find(params[:id])

    if @user_group.update(user_group_param.first)
      head :no_content
    else
      render json: @user_group.errors, status: :unprocessable_entity
    end
  end

  private

    def set_user_group
      @user_groups = UserGroup.find(params[:id])
    end

    def user_group_params
       params.require(:user_groups).map { |g| g.permit(:id)}
    end

    def user_group_param
       params.require(:user_group).map { |g| g.permit(:id)}
    end
end
