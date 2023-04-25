# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeStore::Mgmt::V2015_10_01_preview
  module Models
    #
    # Data Lake Store firewall rule list information.
    #
    class DataLakeStoreFirewallRuleListResult

      include MsRestAzure

      include MsRest2::JSONable
      # @return [Array<FirewallRule>] the results of the list operation
      attr_accessor :value

      # @return [String] the link (url) to the next page of results.
      attr_accessor :next_link

      # @return [Integer] the total count of results that are available, but
      # might not be returned in the current page.
      attr_accessor :count

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<FirewallRule>] operation results.
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
      # @return [DataLakeStoreFirewallRuleListResult] with next page content.
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
      # Mapper for DataLakeStoreFirewallRuleListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataLakeStoreFirewallRuleListResult',
          type: {
            name: 'Composite',
            class_name: 'DataLakeStoreFirewallRuleListResult',
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
                      serialized_name: 'FirewallRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FirewallRule'
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
              count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'count',
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
