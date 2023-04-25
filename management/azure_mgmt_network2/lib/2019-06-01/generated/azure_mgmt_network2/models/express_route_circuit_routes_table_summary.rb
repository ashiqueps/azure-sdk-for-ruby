# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_06_01
  module Models
    #
    # The routes table associated with the ExpressRouteCircuit.
    #
    class ExpressRouteCircuitRoutesTableSummary

      include MsRestAzure2

      # @return [String] IP address of the neighbor.
      attr_accessor :neighbor

      # @return [Integer] BGP version number spoken to the neighbor.
      attr_accessor :v

      # @return [Integer] Autonomous system number.
      attr_accessor :as

      # @return [String] The length of time that the BGP session has been in
      # the Established state, or the current status if not in the Established
      # state.
      attr_accessor :up_down

      # @return [String] Current state of the BGP session, and the number of
      # prefixes that have been received from a neighbor or peer group.
      attr_accessor :state_pfx_rcd


      #
      # Mapper for ExpressRouteCircuitRoutesTableSummary class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteCircuitRoutesTableSummary',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitRoutesTableSummary',
            model_properties: {
              neighbor: {
                client_side_validation: true,
                required: false,
                serialized_name: 'neighbor',
                type: {
                  name: 'String'
                }
              },
              v: {
                client_side_validation: true,
                required: false,
                serialized_name: 'v',
                type: {
                  name: 'Number'
                }
              },
              as: {
                client_side_validation: true,
                required: false,
                serialized_name: 'as',
                type: {
                  name: 'Number'
                }
              },
              up_down: {
                client_side_validation: true,
                required: false,
                serialized_name: 'upDown',
                type: {
                  name: 'String'
                }
              },
              state_pfx_rcd: {
                client_side_validation: true,
                required: false,
                serialized_name: 'statePfxRcd',
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
