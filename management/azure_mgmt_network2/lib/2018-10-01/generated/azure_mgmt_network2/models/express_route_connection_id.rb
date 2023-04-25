# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_10_01
  module Models
    #
    # The ID of the ExpressRouteConnection.
    #
    class ExpressRouteConnectionId

      include MsRestAzure2

      # @return [String] The ID of the ExpressRouteConnection.
      attr_accessor :id


      #
      # Mapper for ExpressRouteConnectionId class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteConnectionId',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteConnectionId',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
