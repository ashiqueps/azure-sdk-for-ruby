# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2017_10_01
  module Models
    #
    # Response for ListRoutesTable associated with the Express Route Circuits
    # API.
    #
    class ExpressRouteCircuitsRoutesTableSummaryListResult

      include MsRestAzure2

      # @return [Array<ExpressRouteCircuitRoutesTableSummary>] A list of the
      # routes table.
      attr_accessor :value

      # @return [String] The URL to get the next set of results.
      attr_accessor :next_link


      #
      # Mapper for ExpressRouteCircuitsRoutesTableSummaryListResult class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteCircuitsRoutesTableSummaryListResult',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitsRoutesTableSummaryListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ExpressRouteCircuitRoutesTableSummaryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressRouteCircuitRoutesTableSummary'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextLink',
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
