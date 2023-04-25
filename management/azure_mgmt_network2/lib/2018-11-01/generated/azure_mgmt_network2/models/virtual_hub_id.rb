# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_11_01
  module Models
    #
    # Virtual Hub identifier.
    #
    class VirtualHubId

      include MsRestAzure2

      # @return [String] The resource URI for the Virtual Hub where the
      # ExpressRoute gateway is or will be deployed. The Virtual Hub resource
      # and the ExpressRoute gateway resource reside in the same subscription.
      attr_accessor :id


      #
      # Mapper for VirtualHubId class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualHubId',
          type: {
            name: 'Composite',
            class_name: 'VirtualHubId',
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
