# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_07_01
  module Models
    #
    # IP configuration for virtual network gateway.
    #
    class VirtualNetworkGatewayIPConfiguration < SubResource

      include MsRestAzure2

      # @return [IPAllocationMethod] The private IP address allocation method.
      # Possible values include: 'Static', 'Dynamic'
      attr_accessor :private_ipallocation_method

      # @return [SubResource] The reference to the subnet resource.
      attr_accessor :subnet

      # @return [SubResource] The reference to the public IP resource.
      attr_accessor :public_ipaddress

      # @return [String] Private IP Address for this gateway.
      attr_accessor :private_ipaddress

      # @return [ProvisioningState] The provisioning state of the virtual
      # network gateway IP configuration resource. Possible values include:
      # 'Succeeded', 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for VirtualNetworkGatewayIPConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualNetworkGatewayIPConfiguration',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkGatewayIPConfiguration',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              private_ipallocation_method: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateIPAllocationMethod',
                type: {
                  name: 'String'
                }
              },
              subnet: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.subnet',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              public_ipaddress: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publicIPAddress',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              private_ipaddress: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.privateIPAddress',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
