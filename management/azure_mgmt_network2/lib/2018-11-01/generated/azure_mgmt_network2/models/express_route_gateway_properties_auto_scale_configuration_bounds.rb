# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_11_01
  module Models
    #
    # Minimum and maximum number of scale units to deploy.
    #
    class ExpressRouteGatewayPropertiesAutoScaleConfigurationBounds

      include MsRestAzure2

      # @return [Integer] Minimum number of scale units deployed for
      # ExpressRoute gateway.
      attr_accessor :min

      # @return [Integer] Maximum number of scale units deployed for
      # ExpressRoute gateway.
      attr_accessor :max


      #
      # Mapper for ExpressRouteGatewayPropertiesAutoScaleConfigurationBounds
      # class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteGatewayProperties_autoScaleConfiguration_bounds',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteGatewayPropertiesAutoScaleConfigurationBounds',
            model_properties: {
              min: {
                client_side_validation: true,
                required: false,
                serialized_name: 'min',
                type: {
                  name: 'Number'
                }
              },
              max: {
                client_side_validation: true,
                required: false,
                serialized_name: 'max',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
