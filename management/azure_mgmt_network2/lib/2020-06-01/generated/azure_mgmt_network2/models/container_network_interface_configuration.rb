# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_06_01
  module Models
    #
    # Container network interface configuration child resource.
    #
    class ContainerNetworkInterfaceConfiguration < SubResource

      include MsRestAzure2

      # @return [Array<IPConfigurationProfile>] A list of ip configurations of
      # the container network interface configuration.
      attr_accessor :ip_configurations

      # @return [Array<SubResource>] A list of container network interfaces
      # created from this container network interface configuration.
      attr_accessor :container_network_interfaces

      # @return [ProvisioningState] The provisioning state of the container
      # network interface configuration resource. Possible values include:
      # 'Succeeded', 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The name of the resource. This name can be used to
      # access the resource.
      attr_accessor :name

      # @return [String] Sub Resource type.
      attr_accessor :type

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for ContainerNetworkInterfaceConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerNetworkInterfaceConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ContainerNetworkInterfaceConfiguration',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              ip_configurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ipConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IPConfigurationProfileElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IPConfigurationProfile'
                      }
                  }
                }
              },
              container_network_interfaces: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.containerNetworkInterfaces',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
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
