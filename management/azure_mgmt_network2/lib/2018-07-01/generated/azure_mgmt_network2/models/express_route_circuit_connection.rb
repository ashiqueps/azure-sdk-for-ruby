# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_07_01
  module Models
    #
    # Express Route Circuit Connection in an ExpressRouteCircuitPeering
    # resource.
    #
    class ExpressRouteCircuitConnection < SubResource

      include MsRestAzure2

      # @return [SubResource] Reference to Express Route Circuit Private
      # Peering Resource of the circuit initiating connection.
      attr_accessor :express_route_circuit_peering

      # @return [SubResource] Reference to Express Route Circuit Private
      # Peering Resource of the peered circuit.
      attr_accessor :peer_express_route_circuit_peering

      # @return [String] /29 IP address space to carve out Customer addresses
      # for tunnels.
      attr_accessor :address_prefix

      # @return [String] The authorization key.
      attr_accessor :authorization_key

      # @return [CircuitConnectionStatus] Express Route Circuit Connection
      # State. Possible values are: 'Connected' and 'Disconnected'. Possible
      # values include: 'Connected', 'Connecting', 'Disconnected'
      attr_accessor :circuit_connection_status

      # @return [String] Provisioning state of the circuit connection resource.
      # Possible values are: 'Succeeded', 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] Gets name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for ExpressRouteCircuitConnection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteCircuitConnection',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitConnection',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              express_route_circuit_peering: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.expressRouteCircuitPeering',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              peer_express_route_circuit_peering: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peerExpressRouteCircuitPeering',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              address_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.addressPrefix',
                type: {
                  name: 'String'
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
              circuit_connection_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.circuitConnectionStatus',
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
