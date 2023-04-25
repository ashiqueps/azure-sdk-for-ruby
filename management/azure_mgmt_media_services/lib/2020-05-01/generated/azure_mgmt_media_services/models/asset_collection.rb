# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # A collection of Asset items.
    #
    class AssetCollection

      include MsRestAzure

      include MsRest2::JSONable
      # @return [Array<Asset>] A collection of Asset items.
      attr_accessor :value

      # @return [String] A link to the next page of the collection (when the
      # collection contains too many results to return in one response).
      attr_accessor :odatanext_link

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<Asset>] operation results.
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
      # @return [AssetCollection] with next page content.
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
      # Mapper for AssetCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AssetCollection',
          type: {
            name: 'Composite',
            class_name: 'AssetCollection',
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
                      serialized_name: 'AssetElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Asset'
                      }
                  }
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
