# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_06_01
  module Models
    #
    # Configuration for auto scaling.
    #
    class ExpressRouteGatewayPropertiesAutoScaleConfiguration

      include MsRestAzure2

      # @return [ExpressRouteGatewayPropertiesAutoScaleConfigurationBounds]
      # Minimum and maximum number of scale units to deploy.
      attr_accessor :bounds


      #
      # Mapper for ExpressRouteGatewayPropertiesAutoScaleConfiguration class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteGatewayProperties_autoScaleConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteGatewayPropertiesAutoScaleConfiguration',
            model_properties: {
              bounds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'bounds',
                type: {
                  name: 'Composite',
                  class_name: 'ExpressRouteGatewayPropertiesAutoScaleConfigurationBounds'
                }
              }
            }
          }
        }
      end
    end
  end
end
