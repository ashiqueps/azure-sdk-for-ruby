# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_10_01
  module Models
    #
    # Container network interface child resource.
    #
    class ContainerNetworkInterface < SubResource

      include MsRestAzure2

      # @return [ContainerNetworkInterfaceConfiguration] Container network
      # interface configuration from which this container network interface is
      # created.
      attr_accessor :container_network_interface_configuration

      # @return [Container] Reference to the container to which this container
      # network interface is attached.
      attr_accessor :container

      # @return [Array<ContainerNetworkInterfaceIpConfiguration>] Reference to
      # the ip configuration on this container nic.
      attr_accessor :ip_configurations

      # @return [String] The provisioning state of the resource.
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
      # Mapper for ContainerNetworkInterface class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerNetworkInterface',
          type: {
            name: 'Composite',
            class_name: 'ContainerNetworkInterface',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              container_network_interface_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.containerNetworkInterfaceConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerNetworkInterfaceConfiguration'
                }
              },
              container: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.container',
                type: {
                  name: 'Composite',
                  class_name: 'Container'
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
                      serialized_name: 'ContainerNetworkInterfaceIpConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ContainerNetworkInterfaceIpConfiguration'
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
