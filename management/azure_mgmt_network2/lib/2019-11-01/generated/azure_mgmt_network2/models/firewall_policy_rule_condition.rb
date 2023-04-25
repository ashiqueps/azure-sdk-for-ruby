# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_11_01
  module Models
    #
    # Properties of a rule.
    #
    class FirewallPolicyRuleCondition

      include MsRestAzure2

      @@discriminatorMap = Hash.new
      @@discriminatorMap["ApplicationRuleCondition"] = "ApplicationRuleCondition"
      @@discriminatorMap["NetworkRuleCondition"] = "NetworkRuleCondition"

      def initialize
        @ruleConditionType = "FirewallPolicyRuleCondition"
      end

      attr_accessor :ruleConditionType

      # @return [String] Name of the rule condition.
      attr_accessor :name

      # @return [String] Description of the rule condition.
      attr_accessor :description


      #
      # Mapper for FirewallPolicyRuleCondition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FirewallPolicyRuleCondition',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'ruleConditionType',
            uber_parent: 'FirewallPolicyRuleCondition',
            class_name: 'FirewallPolicyRuleCondition',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
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
