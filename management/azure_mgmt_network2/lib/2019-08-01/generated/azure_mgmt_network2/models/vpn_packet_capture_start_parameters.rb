# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_08_01
  module Models
    #
    # Start packet capture parameters on virtual network gateway.
    #
    class VpnPacketCaptureStartParameters

      include MsRestAzure2

      # @return [String] Start Packet capture parameters.
      attr_accessor :filter_data


      #
      # Mapper for VpnPacketCaptureStartParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VpnPacketCaptureStartParameters',
          type: {
            name: 'Composite',
            class_name: 'VpnPacketCaptureStartParameters',
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
