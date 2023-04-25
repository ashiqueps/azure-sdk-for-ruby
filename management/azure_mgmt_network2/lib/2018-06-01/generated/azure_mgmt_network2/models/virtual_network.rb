# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_06_01
  module Models
    #
    # Virtual Network resource.
    #
    class VirtualNetwork < Resource

      include MsRestAzure2

      # @return [AddressSpace] The AddressSpace that contains an array of IP
      # address ranges that can be used by subnets.
      attr_accessor :address_space

      # @return [DhcpOptions] The dhcpOptions that contains an array of DNS
      # servers available to VMs deployed in the virtual network.
      attr_accessor :dhcp_options

      # @return [Array<Subnet>] A list of subnets in a Virtual Network.
      attr_accessor :subnets

      # @return [Array<VirtualNetworkPeering>] A list of peerings in a Virtual
      # Network.
      attr_accessor :virtual_network_peerings

      # @return [String] The resourceGuid property of the Virtual Network
      # resource.
      attr_accessor :resource_guid

      # @return [String] The provisioning state of the PublicIP resource.
      # Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [Boolean] Indicates if DDoS protection is enabled for all the
      # protected resources in the virtual network. It requires a DDoS
      # protection plan associated with the resource. Default value: false .
      attr_accessor :enable_ddos_protection

      # @return [Boolean] Indicates if VM protection is enabled for all the
      # subnets in the virtual network. Default value: false .
      attr_accessor :enable_vm_protection

      # @return [SubResource] The DDoS protection plan associated with the
      # virtual network.
      attr_accessor :ddos_protection_plan

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated.
      attr_accessor :etag


      #
      # Mapper for VirtualNetwork class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualNetwork',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetwork',
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
              address_space: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.addressSpace',
                type: {
                  name: 'Composite',
                  class_name: 'AddressSpace'
                }
              },
              dhcp_options: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dhcpOptions',
                type: {
                  name: 'Composite',
                  class_name: 'DhcpOptions'
                }
              },
              subnets: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.subnets',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubnetElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Subnet'
                      }
                  }
                }
              },
              virtual_network_peerings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualNetworkPeerings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualNetworkPeeringElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualNetworkPeering'
                      }
                  }
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
              enable_ddos_protection: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableDdosProtection',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              enable_vm_protection: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableVmProtection',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              ddos_protection_plan: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ddosProtectionPlan',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
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
