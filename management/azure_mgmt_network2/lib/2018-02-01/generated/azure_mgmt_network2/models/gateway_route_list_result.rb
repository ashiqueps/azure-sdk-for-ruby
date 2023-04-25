# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_02_01
  module Models
    #
    # List of virtual network gateway routes
    #
    class GatewayRouteListResult

      include MsRestAzure2

      # @return [Array<GatewayRoute>] List of gateway routes
      attr_accessor :value


      #
      # Mapper for GatewayRouteListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GatewayRouteListResult',
          type: {
            name: 'Composite',
            class_name: 'GatewayRouteListResult',
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
                      serialized_name: 'GatewayRouteElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'GatewayRoute'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
