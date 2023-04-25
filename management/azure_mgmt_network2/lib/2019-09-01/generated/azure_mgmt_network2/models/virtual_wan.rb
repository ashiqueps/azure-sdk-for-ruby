# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_09_01
  module Models
    #
    # VirtualWAN Resource.
    #
    class VirtualWAN < Resource

      include MsRestAzure2

      # @return [Boolean] Vpn encryption to be disabled or not.
      attr_accessor :disable_vpn_encryption

      # @return [Array<SubResource>] List of VirtualHubs in the VirtualWAN.
      attr_accessor :virtual_hubs

      # @return [Array<SubResource>] List of VpnSites in the VirtualWAN.
      attr_accessor :vpn_sites

      # @return [Boolean] True if branch to branch traffic is allowed.
      attr_accessor :allow_branch_to_branch_traffic

      # @return [Boolean] True if Vnet to Vnet traffic is allowed.
      attr_accessor :allow_vnet_to_vnet_traffic

      # @return [OfficeTrafficCategory] The office local breakout category.
      # Possible values include: 'Optimize', 'OptimizeAndAllow', 'All', 'None'
      attr_accessor :office365local_breakout_category

      # @return [ProvisioningState] The provisioning state of the virtual WAN
      # resource. Possible values include: 'Succeeded', 'Updating', 'Deleting',
      # 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The type of the VirtualWAN.
      attr_accessor :virtual_wan_type

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for VirtualWAN class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualWAN',
          type: {
            name: 'Composite',
            class_name: 'VirtualWAN',
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
              disable_vpn_encryption: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.disableVpnEncryption',
                type: {
                  name: 'Boolean'
                }
              },
              virtual_hubs: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.virtualHubs',
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
              vpn_sites: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.vpnSites',
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
              allow_branch_to_branch_traffic: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowBranchToBranchTraffic',
                type: {
                  name: 'Boolean'
                }
              },
              allow_vnet_to_vnet_traffic: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowVnetToVnetTraffic',
                type: {
                  name: 'Boolean'
                }
              },
              office365local_breakout_category: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.office365LocalBreakoutCategory',
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
              virtual_wan_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.type',
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
