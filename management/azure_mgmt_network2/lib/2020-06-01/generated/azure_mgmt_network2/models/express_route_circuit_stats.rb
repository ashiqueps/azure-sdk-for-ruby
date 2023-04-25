# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_06_01
  module Models
    #
    # Contains stats associated with the peering.
    #
    class ExpressRouteCircuitStats

      include MsRestAzure2

      # @return [Integer] The Primary BytesIn of the peering.
      attr_accessor :primarybytes_in

      # @return [Integer] The primary BytesOut of the peering.
      attr_accessor :primarybytes_out

      # @return [Integer] The secondary BytesIn of the peering.
      attr_accessor :secondarybytes_in

      # @return [Integer] The secondary BytesOut of the peering.
      attr_accessor :secondarybytes_out


      #
      # Mapper for ExpressRouteCircuitStats class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteCircuitStats',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitStats',
            model_properties: {
              primarybytes_in: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primarybytesIn',
                type: {
                  name: 'Number'
                }
              },
              primarybytes_out: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primarybytesOut',
                type: {
                  name: 'Number'
                }
              },
              secondarybytes_in: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secondarybytesIn',
                type: {
                  name: 'Number'
                }
              },
              secondarybytes_out: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secondarybytesOut',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
