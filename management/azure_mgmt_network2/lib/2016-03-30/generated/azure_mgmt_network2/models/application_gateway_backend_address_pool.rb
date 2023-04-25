# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2016_03_30
  module Models
    #
    # Backend Address Pool of application gateway
    #
    class ApplicationGatewayBackendAddressPool < SubResource

      include MsRestAzure2

      # @return [Array<NetworkInterfaceIPConfiguration>] Gets collection of
      # references to IPs defined in NICs
      attr_accessor :backend_ipconfigurations

      # @return [Array<ApplicationGatewayBackendAddress>] Gets or sets the
      # backend addresses
      attr_accessor :backend_addresses

      # @return [String] Gets or sets Provisioning state of the backend address
      # pool resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      # @return [String] Gets name of the resource that is unique within a
      # resource group. This name can be used to access the resource
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated
      attr_accessor :etag


      #
      # Mapper for ApplicationGatewayBackendAddressPool class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayBackendAddressPool',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayBackendAddressPool',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              backend_ipconfigurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.backendIPConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NetworkInterfaceIPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkInterfaceIPConfiguration'
                      }
                  }
                }
              },
              backend_addresses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.backendAddresses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayBackendAddressElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayBackendAddress'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
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
