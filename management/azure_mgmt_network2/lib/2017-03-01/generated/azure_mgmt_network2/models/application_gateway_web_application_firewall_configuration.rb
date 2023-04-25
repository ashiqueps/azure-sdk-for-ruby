# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2017_03_01
  module Models
    #
    # Application gateway web application firewall configuration.
    #
    class ApplicationGatewayWebApplicationFirewallConfiguration

      include MsRestAzure2

      # @return [Boolean] Whether the web application firewall is enabled or
      # not.
      attr_accessor :enabled

      # @return [ApplicationGatewayFirewallMode] Web application firewall mode.
      # Possible values include: 'Detection', 'Prevention'
      attr_accessor :firewall_mode

      # @return [String] The type of the web application firewall rule set.
      # Possible values are: 'OWASP'.
      attr_accessor :rule_set_type

      # @return [String] The version of the rule set type.
      attr_accessor :rule_set_version

      # @return [Array<ApplicationGatewayFirewallDisabledRuleGroup>] The
      # disabled rule groups.
      attr_accessor :disabled_rule_groups


      #
      # Mapper for ApplicationGatewayWebApplicationFirewallConfiguration class
      # as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayWebApplicationFirewallConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayWebApplicationFirewallConfiguration',
            model_properties: {
              enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              firewall_mode: {
                client_side_validation: true,
                required: true,
                serialized_name: 'firewallMode',
                type: {
                  name: 'String'
                }
              },
              rule_set_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ruleSetType',
                type: {
                  name: 'String'
                }
              },
              rule_set_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ruleSetVersion',
                type: {
                  name: 'String'
                }
              },
              disabled_rule_groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'disabledRuleGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayFirewallDisabledRuleGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayFirewallDisabledRuleGroup'
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
