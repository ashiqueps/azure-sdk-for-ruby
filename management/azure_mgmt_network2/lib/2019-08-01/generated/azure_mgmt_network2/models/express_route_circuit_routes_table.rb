# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_08_01
  module Models
    #
    # The routes table associated with the ExpressRouteCircuit.
    #
    class ExpressRouteCircuitRoutesTable

      include MsRestAzure2

      # @return [String] IP address of a network entity.
      attr_accessor :network

      # @return [String] NextHop address.
      attr_accessor :next_hop

      # @return [String] Local preference value as set with the set
      # local-preference route-map configuration command.
      attr_accessor :loc_prf

      # @return [Integer] Route Weight.
      attr_accessor :weight

      # @return [String] Autonomous system paths to the destination network.
      attr_accessor :path


      #
      # Mapper for ExpressRouteCircuitRoutesTable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteCircuitRoutesTable',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitRoutesTable',
            model_properties: {
              network: {
                client_side_validation: true,
                required: false,
                serialized_name: 'network',
                type: {
                  name: 'String'
                }
              },
              next_hop: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextHop',
                type: {
                  name: 'String'
                }
              },
              loc_prf: {
                client_side_validation: true,
                required: false,
                serialized_name: 'locPrf',
                type: {
                  name: 'String'
                }
              },
              weight: {
                client_side_validation: true,
                required: false,
                serialized_name: 'weight',
                type: {
                  name: 'Number'
                }
              },
              path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'path',
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
