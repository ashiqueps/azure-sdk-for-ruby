# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources2::Mgmt::V2019_03_01
  module Models
    #
    # The type of the paths for alias.
    #
    class AliasPathType

      include MsRestAzure2

      # @return [String] The path of an alias.
      attr_accessor :path

      # @return [Array<String>] The API versions.
      attr_accessor :api_versions


      #
      # Mapper for AliasPathType class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AliasPathType',
          type: {
            name: 'Composite',
            class_name: 'AliasPathType',
            model_properties: {
              path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'path',
                type: {
                  name: 'String'
                }
              },
              api_versions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'apiVersions',
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
