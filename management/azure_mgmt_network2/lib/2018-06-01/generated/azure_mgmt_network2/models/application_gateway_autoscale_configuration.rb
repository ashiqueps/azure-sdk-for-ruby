# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_06_01
  module Models
    #
    # Application Gateway autoscale configuration.
    #
    class ApplicationGatewayAutoscaleConfiguration

      include MsRestAzure2

      # @return [ApplicationGatewayAutoscaleBounds] Autoscale bounds
      attr_accessor :bounds


      #
      # Mapper for ApplicationGatewayAutoscaleConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayAutoscaleConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayAutoscaleConfiguration',
            model_properties: {
              bounds: {
                client_side_validation: true,
                required: true,
                serialized_name: 'bounds',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicationGatewayAutoscaleBounds'
                }
              }
            }
          }
        }
      end
    end
  end
end
