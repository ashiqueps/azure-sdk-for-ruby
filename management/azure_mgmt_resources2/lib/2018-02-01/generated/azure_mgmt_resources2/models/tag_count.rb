# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources2::Mgmt::V2018_02_01
  module Models
    #
    # Tag count.
    #
    class TagCount

      include MsRestAzure2

      # @return [String] Type of count.
      attr_accessor :type

      # @return [Integer] Value of count.
      attr_accessor :value


      #
      # Mapper for TagCount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TagCount',
          type: {
            name: 'Composite',
            class_name: 'TagCount',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
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
