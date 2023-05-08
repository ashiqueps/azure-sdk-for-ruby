# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_07_01
  module Models
    #
    # A reference to VirtualNetworkGateway or LocalNetworkGateway resource.
    #
    class VirtualNetworkConnectionGatewayReference

      include MsRestAzure2

      # @return [String] The ID of VirtualNetworkGateway or LocalNetworkGateway
      # resource.
      attr_accessor :id


      #
      # Mapper for VirtualNetworkConnectionGatewayReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'virtualNetworkConnectionGatewayReference',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkConnectionGatewayReference',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
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