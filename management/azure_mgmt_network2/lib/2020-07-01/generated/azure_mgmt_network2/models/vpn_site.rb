# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_07_01
  module Models
    #
    # VpnSite Resource.
    #
    class VpnSite < Resource

      include MsRestAzure2

      # @return [SubResource] The VirtualWAN to which the vpnSite belongs.
      attr_accessor :virtual_wan

      # @return [DeviceProperties] The device properties.
      attr_accessor :device_properties

      # @return [String] The ip-address for the vpn-site.
      attr_accessor :ip_address

      # @return [String] The key for vpn-site that can be used for connections.
      attr_accessor :site_key

      # @return [AddressSpace] The AddressSpace that contains an array of IP
      # address ranges.
      attr_accessor :address_space

      # @return [BgpSettings] The set of bgp properties.
      attr_accessor :bgp_properties

      # @return [ProvisioningState] The provisioning state of the VPN site
      # resource. Possible values include: 'Succeeded', 'Updating', 'Deleting',
      # 'Failed'
      attr_accessor :provisioning_state

      # @return [Boolean] IsSecuritySite flag.
      attr_accessor :is_security_site

      # @return [Array<VpnSiteLink>] List of all vpn site links.
      attr_accessor :vpn_site_links

      # @return [O365PolicyProperties] Office365 Policy.
      attr_accessor :o365policy

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for VpnSite class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VpnSite',
          type: {
            name: 'Composite',
            class_name: 'VpnSite',
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
              virtual_wan: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualWan',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              device_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.deviceProperties',
                type: {
                  name: 'Composite',
                  class_name: 'DeviceProperties'
                }
              },
              ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ipAddress',
                type: {
                  name: 'String'
                }
              },
              site_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.siteKey',
                type: {
                  name: 'String'
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
              bgp_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.bgpProperties',
                type: {
                  name: 'Composite',
                  class_name: 'BgpSettings'
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
              is_security_site: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isSecuritySite',
                type: {
                  name: 'Boolean'
                }
              },
              vpn_site_links: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vpnSiteLinks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VpnSiteLinkElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VpnSiteLink'
                      }
                  }
                }
              },
              o365policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.o365Policy',
                type: {
                  name: 'Composite',
                  class_name: 'O365PolicyProperties'
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
