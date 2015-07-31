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
    @vlan = Vlan.new(vlan_params) if vlan_params[:id] != 0

    if @vlan.save
      render json: @vlan, status: :created, location: @vlan
    else
      render json: @vlan.errors, status: :unprocessable_entity
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
      params.require(:vlan).permit(:id)
    end

end
