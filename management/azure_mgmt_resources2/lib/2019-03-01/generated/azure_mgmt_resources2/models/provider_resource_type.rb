# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources2::Mgmt::V2019_03_01
  module Models
    #
    # Resource type managed by the resource provider.
    #
    class ProviderResourceType

      include MsRestAzure2

      # @return [String] The resource type.
      attr_accessor :resource_type

      # @return [Array<String>] The collection of locations where this resource
      # type can be created.
      attr_accessor :locations

      # @return [Array<AliasType>] The aliases that are supported by this
      # resource type.
      attr_accessor :aliases

      # @return [Array<String>] The API version.
      attr_accessor :api_versions

      # @return [String] The additional capabilities offered by this resource
      # type.
      attr_accessor :capabilities

      # @return [Hash{String => String}] The properties.
      attr_accessor :properties


      #
      # Mapper for ProviderResourceType class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProviderResourceType',
          type: {
            name: 'Composite',
            class_name: 'ProviderResourceType',
            model_properties: {
              resource_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceType',
                type: {
                  name: 'String'
                }
              },
              locations: {
                client_side_validation: true,
                required: false,
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
              aliases: {
                client_side_validation: true,
                required: false,
                serialized_name: 'aliases',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AliasTypeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AliasType'
                      }
                  }
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
              },
              capabilities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'capabilities',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Dictionary',
                  value: {
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
