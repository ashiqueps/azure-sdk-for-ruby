# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Redis::Mgmt::V2018_03_01
  module Models
    #
    # List of linked servers (with properties) of a Redis cache.
    #
    class RedisLinkedServerWithPropertiesList

      include MsRestAzure

      include MsRest2::JSONable
      # @return [Array<RedisLinkedServerWithProperties>] List of linked servers
      # (with properties) of a Redis cache.
      attr_accessor :value

      # @return [String] Link for next set.
      attr_accessor :next_link

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<RedisLinkedServerWithProperties>] operation results.
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
      # @return [RedisLinkedServerWithPropertiesList] with next page content.
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
      # Mapper for RedisLinkedServerWithPropertiesList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RedisLinkedServerWithPropertiesList',
          type: {
            name: 'Composite',
            class_name: 'RedisLinkedServerWithPropertiesList',
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
                      serialized_name: 'RedisLinkedServerWithPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RedisLinkedServerWithProperties'
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
