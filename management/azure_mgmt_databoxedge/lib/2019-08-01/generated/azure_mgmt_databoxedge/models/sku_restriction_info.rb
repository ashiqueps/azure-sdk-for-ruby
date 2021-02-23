# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataBoxEdge::Mgmt::V2019_08_01
  module Models
    #
    # The restriction info with locations and zones.
    #
    class SkuRestrictionInfo

      include MsRestAzure

      # @return [Array<String>] The locations.
      attr_accessor :locations

      # @return [Array<String>] The zones.
      attr_accessor :zones


      #
      # Mapper for SkuRestrictionInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SkuRestrictionInfo',
          type: {
            name: 'Composite',
            class_name: 'SkuRestrictionInfo',
            model_properties: {
              locations: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'locations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              zones: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'zones',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end