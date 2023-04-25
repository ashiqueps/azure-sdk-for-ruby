# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_01_01
  module Models
    #
    # Outbound NAT pool of the load balancer.
    #
    class OutboundNatRule < SubResource

      include MsRestAzure2

      # @return [Integer] The number of outbound ports to be used for NAT.
      attr_accessor :allocated_outbound_ports

      # @return [Array<SubResource>] The Frontend IP addresses of the load
      # balancer.
      attr_accessor :frontend_ipconfigurations

      # @return [SubResource] A reference to a pool of DIPs. Outbound traffic
      # is randomly load balanced across IPs in the backend IPs.
      attr_accessor :backend_address_pool

      # @return [String] Gets the provisioning state of the PublicIP resource.
      # Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for OutboundNatRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OutboundNatRule',
          type: {
            name: 'Composite',
            class_name: 'OutboundNatRule',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              allocated_outbound_ports: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allocatedOutboundPorts',
                type: {
                  name: 'Number'
                }
              },
              frontend_ipconfigurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.frontendIPConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              backend_address_pool: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.backendAddressPool',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
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
