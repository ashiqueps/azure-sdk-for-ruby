# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_06_01
  module Models
    #
    # Start packet capture parameters.
    #
    class VpnGatewayPacketCaptureStartParameters

      include MsRestAzure2

      # @return [String] Start Packet capture parameters on vpn gateway.
      attr_accessor :filter_data


      #
      # Mapper for VpnGatewayPacketCaptureStartParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VpnGatewayPacketCaptureStartParameters',
          type: {
            name: 'Composite',
            class_name: 'VpnGatewayPacketCaptureStartParameters',
            model_properties: {
              filter_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'filterData',
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
