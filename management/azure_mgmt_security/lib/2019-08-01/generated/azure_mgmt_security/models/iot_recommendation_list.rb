# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2019_08_01
  module Models
    #
    # List of IoT recommendations
    #
    class IotRecommendationList

      include MsRestAzure

      include MsRest2::JSONable
      # @return [Array<IotRecommendation>] List data
      attr_accessor :value

      # @return [String] When available, follow the URI to get the next page of
      # data
      attr_accessor :next_link

      # @return [Integer] Total count of recommendations that conforms with the
      # given filter options (not affected by page size)
      attr_accessor :total_count

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<IotRecommendation>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.next_link != nil && !page.next_link.strip.empty? do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [IotRecommendationList] with next page content.
      #
      def get_next_page
        response = @next_method.call(@next_link).value! unless @next_method.nil?
        unless response.nil?
          @next_link = response.body.next_link
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for IotRecommendationList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IotRecommendationList',
          type: {
            name: 'Composite',
            class_name: 'IotRecommendationList',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IotRecommendationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IotRecommendation'
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
              },
              total_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'totalCount',
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
