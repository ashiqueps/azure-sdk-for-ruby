# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_02_01
  module Models
    #
    # Allows to disable rules within a rule group or an entire rule group.
    #
    class ApplicationGatewayFirewallDisabledRuleGroup

      include MsRestAzure2

      # @return [String] The name of the rule group that will be disabled.
      attr_accessor :rule_group_name

      # @return [Array<Integer>] The list of rules that will be disabled. If
      # null, all rules of the rule group will be disabled.
      attr_accessor :rules


      #
      # Mapper for ApplicationGatewayFirewallDisabledRuleGroup class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayFirewallDisabledRuleGroup',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayFirewallDisabledRuleGroup',
            model_properties: {
              rule_group_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ruleGroupName',
                type: {
                  name: 'String'
                }
              },
              rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
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
