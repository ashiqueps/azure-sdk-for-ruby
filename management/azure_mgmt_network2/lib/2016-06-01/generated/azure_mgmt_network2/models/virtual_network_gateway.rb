# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2016_06_01
  module Models
    #
    # A common class for general resource information
    #
    class VirtualNetworkGateway < Resource

      include MsRestAzure2

      # @return [Array<VirtualNetworkGatewayIPConfiguration>] IpConfigurations
      # for Virtual network gateway.
      attr_accessor :ip_configurations

      # @return [VirtualNetworkGatewayType] The type of this virtual network
      # gateway. Possible values include: 'Vpn', 'ExpressRoute'
      attr_accessor :gateway_type

      # @return [VpnType] The type of this virtual network gateway. Possible
      # values include: 'PolicyBased', 'RouteBased'
      attr_accessor :vpn_type

      # @return [Boolean] EnableBgp Flag
      attr_accessor :enable_bgp

      # @return [Boolean] ActiveActive flag
      attr_accessor :active_active

      # @return [SubResource] Gets or sets the reference of the
      # LocalNetworkGateway resource which represents Local network site having
      # default routes. Assign Null value in case of removing existing default
      # site setting.
      attr_accessor :gateway_default_site

      # @return [VirtualNetworkGatewaySku] Gets or sets the reference of the
      # VirtualNetworkGatewaySku resource which represents the sku selected for
      # Virtual network gateway.
      attr_accessor :sku

      # @return [VpnClientConfiguration] Gets or sets the reference of the
      # VpnClientConfiguration resource which represents the P2S VpnClient
      # configurations.
      attr_accessor :vpn_client_configuration

      # @return [BgpSettings] Virtual network gateway's BGP speaker settings
      attr_accessor :bgp_settings

      # @return [String] Gets or sets resource guid property of the
      # VirtualNetworkGateway resource
      attr_accessor :resource_guid

      # @return [String] Gets provisioning state of the VirtualNetworkGateway
      # resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated
      attr_accessor :etag


      #
      # Mapper for VirtualNetworkGateway class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualNetworkGateway',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkGateway',
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
              ip_configurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ipConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualNetworkGatewayIPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualNetworkGatewayIPConfiguration'
                      }
                  }
                }
              },
              gateway_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.gatewayType',
                type: {
                  name: 'String'
                }
              },
              vpn_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vpnType',
                type: {
                  name: 'String'
                }
              },
              enable_bgp: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableBgp',
                type: {
                  name: 'Boolean'
                }
              },
              active_active: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.activeActive',
                type: {
                  name: 'Boolean'
                }
              },
              gateway_default_site: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.gatewayDefaultSite',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sku',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualNetworkGatewaySku'
                }
              },
              vpn_client_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vpnClientConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'VpnClientConfiguration'
                }
              },
              bgp_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.bgpSettings',
                type: {
                  name: 'Composite',
                  class_name: 'BgpSettings'
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
