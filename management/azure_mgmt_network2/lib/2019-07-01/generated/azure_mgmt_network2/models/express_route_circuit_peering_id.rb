# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_07_01
  module Models
    #
    # ExpressRoute circuit peering identifier.
    #
    class ExpressRouteCircuitPeeringId

      include MsRestAzure2

      # @return [String] The ID of the ExpressRoute circuit peering.
      attr_accessor :id


      #
      # Mapper for ExpressRouteCircuitPeeringId class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteCircuitPeeringId',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitPeeringId',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
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
