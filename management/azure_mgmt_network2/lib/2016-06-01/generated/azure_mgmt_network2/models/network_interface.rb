# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2016_06_01
  module Models
    #
    # A NetworkInterface in a resource group
    #
    class NetworkInterface < Resource

      include MsRestAzure2

      # @return [SubResource] Gets or sets the reference of a VirtualMachine
      attr_accessor :virtual_machine

      # @return [NetworkSecurityGroup] Gets or sets the reference of the
      # NetworkSecurityGroup resource
      attr_accessor :network_security_group

      # @return [Array<NetworkInterfaceIPConfiguration>] Gets or sets list of
      # IPConfigurations of the network interface
      attr_accessor :ip_configurations

      # @return [NetworkInterfaceDnsSettings] Gets or sets DNS settings in
      # network interface
      attr_accessor :dns_settings

      # @return [String] Gets the MAC address of the network interface
      attr_accessor :mac_address

      # @return [Boolean] Gets whether this is a primary NIC on a virtual
      # machine
      attr_accessor :primary

      # @return [Boolean] Gets or sets whether IPForwarding is enabled on the
      # NIC
      attr_accessor :enable_ipforwarding

      # @return [String] Gets or sets resource guid property of the network
      # interface resource
      attr_accessor :resource_guid

      # @return [String] Gets provisioning state of the PublicIP resource
      # Updating/Deleting/Failed
      attr_accessor :provisioning_state

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated
      attr_accessor :etag


      #
      # Mapper for NetworkInterface class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkInterface',
          type: {
            name: 'Composite',
            class_name: 'NetworkInterface',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              virtual_machine: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualMachine',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              network_security_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.networkSecurityGroup',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkSecurityGroup'
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
                      serialized_name: 'NetworkInterfaceIPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkInterfaceIPConfiguration'
                      }
                  }
                }
              },
              dns_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dnsSettings',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkInterfaceDnsSettings'
                }
              },
              mac_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.macAddress',
                type: {
                  name: 'String'
                }
              },
              primary: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.primary',
                type: {
                  name: 'Boolean'
                }
              },
              enable_ipforwarding: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableIPForwarding',
                type: {
                  name: 'Boolean'
                }
              },
              resource_guid: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceGuid',
                type: {
                  name: 'String'
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
