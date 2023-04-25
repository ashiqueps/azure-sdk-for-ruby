# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DigitalTwins::Mgmt::V2020_10_31
  module Models
    #
    # A list of DigitalTwins description objects with a next link.
    #
    class DigitalTwinsDescriptionListResult

      include MsRestAzure

      include MsRest2::JSONable
      # @return [String] The link used to get the next page of DigitalTwins
      # description objects.
      attr_accessor :next_link

      # @return [Array<DigitalTwinsDescription>] A list of DigitalTwins
      # description objects.
      attr_accessor :value

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<DigitalTwinsDescription>] operation results.
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
      # @return [DigitalTwinsDescriptionListResult] with next page content.
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
      # Mapper for DigitalTwinsDescriptionListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DigitalTwinsDescriptionListResult',
          type: {
            name: 'Composite',
            class_name: 'DigitalTwinsDescriptionListResult',
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
                      serialized_name: 'DigitalTwinsDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DigitalTwinsDescription'
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
