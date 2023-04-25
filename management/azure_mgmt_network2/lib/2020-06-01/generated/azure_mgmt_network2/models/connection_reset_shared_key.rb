# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_06_01
  module Models
    #
    # The virtual network connection reset shared key.
    #
    class ConnectionResetSharedKey

      include MsRestAzure2

      # @return [Integer] The virtual network connection reset shared key
      # length, should between 1 and 128.
      attr_accessor :key_length


      #
      # Mapper for ConnectionResetSharedKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionResetSharedKey',
          type: {
            name: 'Composite',
            class_name: 'ConnectionResetSharedKey',
            model_properties: {
              key_length: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyLength',
                constraints: {
                  InclusiveMaximum: 128,
                  InclusiveMinimum: 1
                },
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
