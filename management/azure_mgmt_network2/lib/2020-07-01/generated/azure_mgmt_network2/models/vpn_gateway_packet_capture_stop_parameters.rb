# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_07_01
  module Models
    #
    # Stop packet capture parameters.
    #
    class VpnGatewayPacketCaptureStopParameters

      include MsRestAzure2

      # @return [String] SAS url for packet capture on vpn gateway.
      attr_accessor :sas_url


      #
      # Mapper for VpnGatewayPacketCaptureStopParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VpnGatewayPacketCaptureStopParameters',
          type: {
            name: 'Composite',
            class_name: 'VpnGatewayPacketCaptureStopParameters',
            model_properties: {
              sas_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sasUrl',
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
