# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PolicyInsights::Mgmt::V2019_10_01
  module Models
    #
    # Query results.
    #
    class PolicyEventsQueryResults

      include MsRestAzure

      include MsRest2::JSONable
      # @return [String] OData context string; used by OData clients to resolve
      # type information based on metadata.
      attr_accessor :odatacontext

      # @return [Integer] OData entity count; represents the number of policy
      # event records returned.
      attr_accessor :odatacount

      # @return [String] Odata next link; URL to get the next set of results.
      attr_accessor :odatanext_link

      # @return [Array<PolicyEvent>] Query results.
      attr_accessor :value

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<PolicyEvent>] operation results.
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
      # @return [PolicyEventsQueryResults] with next page content.
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
      # Mapper for PolicyEventsQueryResults class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicyEventsQueryResults',
          type: {
            name: 'Composite',
            class_name: 'PolicyEventsQueryResults',
            model_properties: {
              odatacontext: {
                client_side_validation: true,
                required: false,
                serialized_name: '@odata\\.context',
                type: {
                  name: 'String'
                }
              },
              odatacount: {
                client_side_validation: true,
                required: false,
                serialized_name: '@odata\\.count',
                constraints: {
                  InclusiveMinimum: 0
                },
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
                      serialized_name: 'PolicyEventElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PolicyEvent'
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
