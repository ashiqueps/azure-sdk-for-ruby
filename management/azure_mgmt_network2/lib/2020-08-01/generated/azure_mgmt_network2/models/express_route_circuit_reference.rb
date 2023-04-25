# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_08_01
  module Models
    #
    # Reference to an express route circuit.
    #
    class ExpressRouteCircuitReference

      include MsRestAzure2

      # @return [String] Corresponding Express Route Circuit Id.
      attr_accessor :id


      #
      # Mapper for ExpressRouteCircuitReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteCircuitReference',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitReference',
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
