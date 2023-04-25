# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2016_06_01
  module Models
    #
    # Response for ListArpTable associated with the Express Route Circuits Api
    #
    class ExpressRouteCircuitsArpTableListResult

      include MsRestAzure2

      # @return [Array<ExpressRouteCircuitArpTable>] Gets List of ArpTable
      attr_accessor :value

      # @return [String] Gets the URL to get the next set of results.
      attr_accessor :next_link


      #
      # Mapper for ExpressRouteCircuitsArpTableListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteCircuitsArpTableListResult',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitsArpTableListResult',
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
                      serialized_name: 'ExpressRouteCircuitArpTableElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressRouteCircuitArpTable'
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
