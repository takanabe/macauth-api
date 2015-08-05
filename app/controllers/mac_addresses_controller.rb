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
    mac_addresses = []
    mac_address_params_array = mac_address_params

    begin
      ActiveRecord::Base.transaction do
        mac_address_params_array.each do |p|
          mac_addresses.push MacAddress.new(p)
        end
        raise "Transaction Failed" unless (MacAddress.import mac_addresses).failed_instances.size == 0
      end
      render json: { succeeded: '201 Created' }, status: 201
    rescue => e
      render json: { error: '422 Unprocessable Entity'}, status: :unprocessable_entity
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

  # DELETE /mac_addresses/aabbccddeeff
  def destroy
    @mac_addresses.destroy

    head :no_content
  end

  private

    def set_mac_address
      @mac_addresses = MacAddress.find(params[:id])
    end

    def mac_address_params
      params.require(:mac_address).map { |m| m.permit(:id, :user_group_id, :vlan_id, :information)}
    end
end
