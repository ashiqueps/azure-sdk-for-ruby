# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_05_01
  module Models
    #
    # Allow to exclude some variable satisfy the condition for the WAF check.
    #
    class ManagedRulesDefinition

      include MsRestAzure2

      # @return [Array<OwaspCrsExclusionEntry>] The Exclusions that are applied
      # on the policy.
      attr_accessor :exclusions

      # @return [Array<ManagedRuleSet>] The managed rule sets that are
      # associated with the policy.
      attr_accessor :managed_rule_sets


      #
      # Mapper for ManagedRulesDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedRulesDefinition',
          type: {
            name: 'Composite',
            class_name: 'ManagedRulesDefinition',
            model_properties: {
              exclusions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'exclusions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'OwaspCrsExclusionEntryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'OwaspCrsExclusionEntry'
                      }
                  }
                }
              },
              managed_rule_sets: {
                client_side_validation: true,
                required: true,
                serialized_name: 'managedRuleSets',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ManagedRuleSetElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ManagedRuleSet'
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
