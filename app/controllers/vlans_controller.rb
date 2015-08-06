class VlansController < ApplicationController
  before_action :set_vlan, only: [:show, :update, :destroy]

  # GET /vlans
  def index
    @vlans = Vlan.all

    render json: @vlans
  end

  # GET /vlans/1
  def show
    render json: @vlans
  end

  # POST /vlans
  def create
    vlans = []
    vlan_params_array = vlan_params

    begin
      ActiveRecord::Base.transaction do
        vlan_params_array.each do |p|
          vlans.push Vlan.new(p)
        end
        raise "Vlan Transaction Failed" unless (Vlan.import vlans).failed_instances.size == 0
      end
      render json: { succeeded: '201 Created' }, status: 201
    rescue => e
      render json: { error: '422 Unprocessable Entity'}, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vlans/1
  def update
    @vlan = Vlan.find(params[:id])

    if @vlan.update(vlan_params)
      head :no_content
    else
      render json: @vlan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vlans/1
  def destroy
    @vlan.destroy

    head :no_content
  end

  private

    def set_vlan
      @vlans = Vlan.find(params[:id])
    end

    def vlan_params
      params.require(:vlan).map { |v| v.permit(:id)}
    end

end
