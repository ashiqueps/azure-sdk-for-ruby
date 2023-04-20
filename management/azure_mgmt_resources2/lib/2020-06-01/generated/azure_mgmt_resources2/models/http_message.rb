# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources2::Mgmt::V2020_06_01
  module Models
    #
    # HTTP message.
    #
    class HttpMessage

      include MsRestAzure2

      # @return HTTP message content.
      attr_accessor :content


      #
      # Mapper for HttpMessage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HttpMessage',
          type: {
            name: 'Composite',
            class_name: 'HttpMessage',
            model_properties: {
              content: {
                client_side_validation: true,
                required: false,
                serialized_name: 'content',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
