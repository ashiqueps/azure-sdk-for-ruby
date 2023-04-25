# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_03_01
  module Models
    #
    # Response for ResourceNavigationLinks_List operation.
    #
    class ResourceNavigationLinksListResult

      include MsRestAzure2

      # @return [Array<ResourceNavigationLink>] The resource navigation links
      # in a subnet.
      attr_accessor :value

      # @return [String] The URL to get the next set of results.
      attr_accessor :next_link


      #
      # Mapper for ResourceNavigationLinksListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceNavigationLinksListResult',
          type: {
            name: 'Composite',
            class_name: 'ResourceNavigationLinksListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ResourceNavigationLinkElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceNavigationLink'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nextLink',
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
