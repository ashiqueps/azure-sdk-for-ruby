# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources2::Mgmt::V2019_05_10
  module Models
    #
    # Tag information.
    #
    class TagValue

      include MsRestAzure2

      # @return [String] The tag ID.
      attr_accessor :id

      # @return [String] The tag value.
      attr_accessor :tag_value

      # @return [TagCount] The tag value count.
      attr_accessor :count


      #
      # Mapper for TagValue class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TagValue',
          type: {
            name: 'Composite',
            class_name: 'TagValue',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              tag_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tagValue',
                type: {
                  name: 'String'
                }
              },
              count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Composite',
                  class_name: 'TagCount'
                }
              }
            }
          }
        }
      end
    end
  end
end
