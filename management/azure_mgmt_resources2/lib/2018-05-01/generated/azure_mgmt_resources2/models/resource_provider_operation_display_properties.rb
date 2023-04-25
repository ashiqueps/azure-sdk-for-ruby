# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources2::Mgmt::V2018_05_01
  module Models
    #
    # Resource provider operation's display properties.
    #
    class ResourceProviderOperationDisplayProperties

      include MsRestAzure2

      # @return [String] Operation description.
      attr_accessor :publisher

      # @return [String] Operation provider.
      attr_accessor :provider

      # @return [String] Operation resource.
      attr_accessor :resource

      # @return [String] Resource provider operation.
      attr_accessor :operation

      # @return [String] Operation description.
      attr_accessor :description


      #
      # Mapper for ResourceProviderOperationDisplayProperties class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceProviderOperationDisplayProperties',
          type: {
            name: 'Composite',
            class_name: 'ResourceProviderOperationDisplayProperties',
            model_properties: {
              publisher: {
                client_side_validation: true,
                required: false,
                serialized_name: 'publisher',
                type: {
                  name: 'String'
                }
              },
              provider: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provider',
                type: {
                  name: 'String'
                }
              },
              resource: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resource',
                type: {
                  name: 'String'
                }
              },
              operation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
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
