# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_03_01
  module Models
    #
    # Allow to exclude some variable satisfy the condition for the WAF check.
    #
    class ApplicationGatewayFirewallExclusion

      include MsRestAzure2

      # @return [String] The variable to be excluded.
      attr_accessor :match_variable

      # @return [String] When matchVariable is a collection, operate on the
      # selector to specify which elements in the collection this exclusion
      # applies to.
      attr_accessor :selector_match_operator

      # @return [String] When matchVariable is a collection, operator used to
      # specify which elements in the collection this exclusion applies to.
      attr_accessor :selector


      #
      # Mapper for ApplicationGatewayFirewallExclusion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayFirewallExclusion',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayFirewallExclusion',
            model_properties: {
              match_variable: {
                client_side_validation: true,
                required: true,
                serialized_name: 'matchVariable',
                type: {
                  name: 'String'
                }
              },
              selector_match_operator: {
                client_side_validation: true,
                required: true,
                serialized_name: 'selectorMatchOperator',
                type: {
                  name: 'String'
                }
              },
              selector: {
                client_side_validation: true,
                required: true,
                serialized_name: 'selector',
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
