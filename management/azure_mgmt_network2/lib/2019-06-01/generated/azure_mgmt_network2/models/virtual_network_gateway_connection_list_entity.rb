# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_06_01
  module Models
    #
    # A common class for general resource information.
    #
    class VirtualNetworkGatewayConnectionListEntity < Resource

      include MsRestAzure2

      # @return [String] The authorizationKey.
      attr_accessor :authorization_key

      # @return [VirtualNetworkConnectionGatewayReference] The reference to
      # virtual network gateway resource.
      attr_accessor :virtual_network_gateway1

      # @return [VirtualNetworkConnectionGatewayReference] The reference to
      # virtual network gateway resource.
      attr_accessor :virtual_network_gateway2

      # @return [VirtualNetworkConnectionGatewayReference] The reference to
      # local network gateway resource.
      attr_accessor :local_network_gateway2

      # @return [VirtualNetworkGatewayConnectionType] Gateway connection type.
      # Possible values include: 'IPsec', 'Vnet2Vnet', 'ExpressRoute',
      # 'VPNClient'
      attr_accessor :connection_type

      # @return [VirtualNetworkGatewayConnectionProtocol] Connection protocol
      # used for this connection. Possible values include: 'IKEv2', 'IKEv1'
      attr_accessor :connection_protocol

      # @return [Integer] The routing weight.
      attr_accessor :routing_weight

      # @return [String] The IPSec shared key.
      attr_accessor :shared_key

      # @return [VirtualNetworkGatewayConnectionStatus] Virtual Network Gateway
      # connection status. Possible values include: 'Unknown', 'Connecting',
      # 'Connected', 'NotConnected'
      attr_accessor :connection_status

      # @return [Array<TunnelConnectionHealth>] Collection of all tunnels'
      # connection health status.
      attr_accessor :tunnel_connection_status

      # @return [Integer] The egress bytes transferred in this connection.
      attr_accessor :egress_bytes_transferred

      # @return [Integer] The ingress bytes transferred in this connection.
      attr_accessor :ingress_bytes_transferred

      # @return [SubResource] The reference to peerings resource.
      attr_accessor :peer

      # @return [Boolean] EnableBgp flag.
      attr_accessor :enable_bgp

      # @return [Boolean] Enable policy-based traffic selectors.
      attr_accessor :use_policy_based_traffic_selectors

      # @return [Array<IpsecPolicy>] The IPSec Policies to be considered by
      # this connection.
      attr_accessor :ipsec_policies

      # @return [String] The resource GUID property of the
      # VirtualNetworkGatewayConnection resource.
      attr_accessor :resource_guid

      # @return [String] The provisioning state of the
      # VirtualNetworkGatewayConnection resource. Possible values are:
      # 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [Boolean] Bypass ExpressRoute Gateway for data forwarding.
      attr_accessor :express_route_gateway_bypass

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated.
      attr_accessor :etag


      #
      # Mapper for VirtualNetworkGatewayConnectionListEntity class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualNetworkGatewayConnectionListEntity',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkGatewayConnectionListEntity',
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
              authorization_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.authorizationKey',
                type: {
                  name: 'String'
                }
              },
              virtual_network_gateway1: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.virtualNetworkGateway1',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualNetworkConnectionGatewayReference'
                }
              },
              virtual_network_gateway2: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualNetworkGateway2',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualNetworkConnectionGatewayReference'
                }
              },
              local_network_gateway2: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.localNetworkGateway2',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualNetworkConnectionGatewayReference'
                }
              },
              connection_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.connectionType',
                type: {
                  name: 'String'
                }
              },
              connection_protocol: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.connectionProtocol',
                type: {
                  name: 'String'
                }
              },
              routing_weight: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.routingWeight',
                type: {
                  name: 'Number'
                }
              },
              shared_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sharedKey',
                type: {
                  name: 'String'
                }
              },
              connection_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.connectionStatus',
                type: {
                  name: 'String'
                }
              },
              tunnel_connection_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.tunnelConnectionStatus',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TunnelConnectionHealthElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TunnelConnectionHealth'
                      }
                  }
                }
              },
              egress_bytes_transferred: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.egressBytesTransferred',
                type: {
                  name: 'Number'
                }
              },
              ingress_bytes_transferred: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.ingressBytesTransferred',
                type: {
                  name: 'Number'
                }
              },
              peer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peer',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
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
              use_policy_based_traffic_selectors: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.usePolicyBasedTrafficSelectors',
                type: {
                  name: 'Boolean'
                }
              },
              ipsec_policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ipsecPolicies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IpsecPolicyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IpsecPolicy'
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
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              express_route_gateway_bypass: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.expressRouteGatewayBypass',
                type: {
                  name: 'Boolean'
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
