# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageCache::Mgmt::V2019_11_01
  module Models
    #
    # A list of Cache usage models.
    #
    class UsageModelsResult

      include MsRestAzure

      include MsRest2::JSONable
      # @return [String] The URI to fetch the next page of Cache usage models.
      attr_accessor :next_link

      # @return [Array<UsageModel>] The list of usage models available for the
      # subscription.
      attr_accessor :value

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<UsageModel>] operation results.
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
      # @return [UsageModelsResult] with next page content.
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
      # Mapper for UsageModelsResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UsageModelsResult',
          type: {
            name: 'Composite',
            class_name: 'UsageModelsResult',
            model_properties: {
              next_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextLink',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UsageModelElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UsageModel'
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
