class MacAddressesController < ApplicationController
  before_action :set_mac_address, only: [:show, :update, :destroy]

  # GET /mac_addresses
  def index
    @mac_addresses = MacAddress.all

    render json: @mac_addresses
  end

  # GET /mac_addresses/1
  def show
    render json: @mac_addresses
  end

  # POST /mac_addresses
  def create
    @mac_address = MacAddress.new(mac_address_params)

    if @mac_address.save
      render json: @mac_address, status: :created, location: @mac_address
    else
      render json: @mac_address.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mac_addresses/1
  def update
    @mac_address = MacAddress.find(params[:id])

    if @mac_address.update(mac_address_params)
      head :no_content
    else
      render json: @mac_address.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mac_addresses/1
  def destroy
    @mac_address.destroy

    head :no_content
  end

  private

    def set_mac_address
      @mac_addresses = MacAddress.find(params[:id])
    end

    def mac_address_params
      params.require(:mac_address).permit(:id, :ug_id, :vlan_id, :information)
    end

end
