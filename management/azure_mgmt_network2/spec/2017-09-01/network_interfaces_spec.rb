# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'

include MsRestAzure2
include Azure::Resources2::Mgmt::V2017_05_10
include Azure::Network2::Mgmt::V2017_09_01

describe 'Network Interfaces' do
  before(:each) do
    @resource_helper = ResourceHelper.new()
    @client = @resource_helper.network_client.network_interfaces
    @resource_group = @resource_helper.create_resource_group
    @location = 'westus'
    @virtual_network = @resource_helper.create_virtual_network(@resource_group.name)
    @subnet = @resource_helper.create_subnet(@virtual_network, @resource_group, @resource_helper.network_client.subnets)
  end

  after(:each) do
    @resource_helper.delete_resource_group(@resource_group.name)
  end

  it 'should create network interface' do
    params = build_network_interface_param
    result = @client.create_or_update_async(@resource_group.name, params.name, params).value!
    expect(result.response.status).to eq(201)
    expect(result.body).not_to be_nil
    expect(result.body.name).to eq(params.name)
  end

  it 'should get network interface' do
    network_interface = create_network_interface
    result = @client.get_async(@resource_group.name, network_interface.name).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.name).to eq(network_interface.name)
  end

  it 'should delete network interface' do
    network_interface = create_network_interface
    result = @client.delete_async(@resource_group.name, network_interface.name).value!
    expect(result.response.status).to eq(200)
  end

  it 'should list all the network interfaces in a subscription' do
    result = @client.list_all_async.value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.value).to be_a(Array)
    while !result.body.next_link.nil? && !result.body.next_link.empty? do
      result = @client.list_all_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end

  it 'should list all the network interfaces in a resource group' do
    result = @client.list_async(@resource_group.name).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.value).to be_a(Array)
    while !result.body.next_link.nil? && !result.body.next_link.empty? do
      result = @client.list_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end

  def create_network_interface
    params = build_network_interface_param
    @client.create_or_update(@resource_group.name, params.name, params)
  end

  def build_network_interface_param
    params = NetworkInterface.new
    params.location = @location
    network_interface_name = 'nic8474'
    ip_config_name = 'ip_name_36282'
    params.name = network_interface_name
    ip_configuration = NetworkInterfaceIPConfiguration.new
    params.ip_configurations = [ip_configuration]
    ip_configuration.name = ip_config_name
    ip_configuration.private_ipallocation_method = 'Dynamic'
    ip_configuration.public_ipaddress = @resource_helper.create_public_ip_address(@location, @resource_group)
    ip_configuration.subnet = @subnet
    params
  end
end
