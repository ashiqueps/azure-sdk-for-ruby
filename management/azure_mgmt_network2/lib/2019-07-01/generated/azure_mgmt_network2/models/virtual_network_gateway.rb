# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_07_01
  module Models
    #
    # A common class for general resource information.
    #
    class VirtualNetworkGateway < Resource

      include MsRestAzure2

      # @return [Array<VirtualNetworkGatewayIPConfiguration>] IP configurations
      # for virtual network gateway.
      attr_accessor :ip_configurations

      # @return [VirtualNetworkGatewayType] The type of this virtual network
      # gateway. Possible values include: 'Vpn', 'ExpressRoute'
      attr_accessor :gateway_type

      # @return [VpnType] The type of this virtual network gateway. Possible
      # values include: 'PolicyBased', 'RouteBased'
      attr_accessor :vpn_type

      # @return [VpnGatewayGeneration] The generation for this
      # VirtualNetworkGateway. Must be None if gatewayType is not VPN. Possible
      # values include: 'None', 'Generation1', 'Generation2'
      attr_accessor :vpn_gateway_generation

      # @return [Boolean] Whether BGP is enabled for this virtual network
      # gateway or not.
      attr_accessor :enable_bgp

      # @return [Boolean] ActiveActive flag.
      attr_accessor :active_active

      # @return [SubResource] The reference of the LocalNetworkGateway resource
      # which represents local network site having default routes. Assign Null
      # value in case of removing existing default site setting.
      attr_accessor :gateway_default_site

      # @return [VirtualNetworkGatewaySku] The reference of the
      # VirtualNetworkGatewaySku resource which represents the SKU selected for
      # Virtual network gateway.
      attr_accessor :sku

      # @return [VpnClientConfiguration] The reference of the
      # VpnClientConfiguration resource which represents the P2S VpnClient
      # configurations.
      attr_accessor :vpn_client_configuration

      # @return [BgpSettings] Virtual network gateway's BGP speaker settings.
      attr_accessor :bgp_settings

      # @return [AddressSpace] The reference of the address space resource
      # which represents the custom routes address space specified by the
      # customer for virtual network gateway and VpnClient.
      attr_accessor :custom_routes

      # @return [String] The resource GUID property of the virtual network
      # gateway resource.
      attr_accessor :resource_guid

      # @return [ProvisioningState] The provisioning state of the virtual
      # network gateway resource. Possible values include: 'Succeeded',
      # 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
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
              vpn_gateway_generation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vpnGatewayGeneration',
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
              custom_routes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.customRoutes',
                type: {
                  name: 'Composite',
                  class_name: 'AddressSpace'
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
                read_only: true,
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
