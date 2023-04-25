# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # The StreamingEndpoint list result.
    #
    class StreamingEndpointListResult

      include MsRestAzure

      include MsRest2::JSONable
      # @return [Array<StreamingEndpoint>] The result of the List
      # StreamingEndpoint operation.
      attr_accessor :value

      # @return [Integer] The number of result.
      attr_accessor :odatacount

      # @return [String] Th link to the next set of results. Not empty if value
      # contains incomplete list of StreamingEndpoints.
      attr_accessor :odatanext_link

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<StreamingEndpoint>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.odatanext_link != nil && !page.odatanext_link.strip.empty? do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [StreamingEndpointListResult] with next page content.
      #
      def get_next_page
        response = @next_method.call(@odatanext_link).value! unless @next_method.nil?
        unless response.nil?
          @odatanext_link = response.body.odatanext_link
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for StreamingEndpointListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StreamingEndpointListResult',
          type: {
            name: 'Composite',
            class_name: 'StreamingEndpointListResult',
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
                      serialized_name: 'StreamingEndpointElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StreamingEndpoint'
                      }
                  }
                }
              },
              odatacount: {
                client_side_validation: true,
                required: false,
                serialized_name: '@odata\\.count',
                type: {
                  name: 'Number'
                }
              },
              odatanext_link: {
                client_side_validation: true,
                required: false,
                serialized_name: '@odata\\.nextLink',
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
