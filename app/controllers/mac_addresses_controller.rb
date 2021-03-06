class MacAddressesController < ApplicationController

  before_action :set_mac_address, only: [:show, :update, :destroy]

  # GET /mac_addresses
  def index
    if params[:all]
      @mac_addresses = MacAddress.all
      render json: {mac_addresses: @mac_addresses}
    else
      @mac_addresses = MacAddress.order('updated_at DESC').page(params[:page])
      @total_pages = MacAddress.page(params[:page]).total_count
      @current_page_size = MacAddress.page(params[:page]).size

      render json: {mac_addresses: @mac_addresses, total_pages: @total_pages, current_page_size: @current_page_size}
    end
  end

  # GET /mac_addresses/aabbccddeeff
  def show
    render json: @mac_addresses
  end

  # GET /mac_addresses/search?q=xxxx
  def search
    keywords = params[:q].split(/[\s　]+/)
    @q = MacAddress.order('updated_at DESC').page(params[:page]).ransack(:id_or_user_group_id_or_vlan_id_or_information_eq_any => keywords).result
    @total_pages = @q.page(params[:page]).total_count
    @current_page_size = @q.page(params[:page]).size

    render json: {mac_addresses: @q, total_pages: @total_pages, current_page_size: @current_page_size}
  end

  # POST /mac_addresses
  def create
    mac_addresses = []
    user_groups = []
    new_user_groups = []
    vlans = []
    new_vlans = []

    mac_address_params_array = mac_address_params
    mac_address_params_array.each do |p|
      #FIXME rescueで例外を拾って正常処理をするのは実装として微妙(ワークアラウンド)
      #{user_groups: [{id: "UG1"}, {id: "UG2"}]}
      begin
        UserGroup.find(p[:user_group_id])
      rescue => e
        new_user_groups.push p[:user_group_id]
      end

      begin
        Vlan.find(p[:vlan_id])
      rescue => e
        new_vlans.push p[:vlan_id]
      end
    end


    begin
      ActiveRecord::Base.transaction do
        new_user_groups.uniq.each do |value|
          user_groups.push UserGroup.new(id: "#{value}")
        end
        raise "UserGroup Transaction Failed" unless (UserGroup.import user_groups).failed_instances.size == 0

        new_vlans.uniq.each do |value|
          vlans.push Vlan.new(id: "#{value}")
        end
        raise "Vlan Transaction Failed" unless (Vlan.import vlans).failed_instances.size == 0

        mac_address_params_array.each do |p|
          mac_addresses.push MacAddress.new(p)
        end
        raise "MacAddress Transaction Failed" unless (MacAddress.import mac_addresses).failed_instances.size == 0
      end
      render json: { succeeded: '201 Created' }, status: 201
    rescue => e
      render json: { error: '422 Unprocessable Entity'}, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mac_addresses/aabbccddeeff
  def update
    @mac_address = MacAddress.find(params[:id])

    if @mac_address.update(mac_address_param)
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
      params.require(:mac_addresses).map { |m| m.permit(:id, :user_group_id, :vlan_id, :information)}
    end

    def mac_address_param
      params.require(:mac_address).permit(:id, :user_group_id, :vlan_id, :information)
    end
end
