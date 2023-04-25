# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_03_01
  module Models
    #
    # Matched rule.
    #
    class MatchedRule

      include MsRestAzure2

      # @return [String] Name of the matched network security rule.
      attr_accessor :rule_name

      # @return [String] The network traffic is allowed or denied. Possible
      # values are 'Allow' and 'Deny'.
      attr_accessor :action


      #
      # Mapper for MatchedRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MatchedRule',
          type: {
            name: 'Composite',
            class_name: 'MatchedRule',
            model_properties: {
              rule_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ruleName',
                type: {
                  name: 'String'
                }
              },
              action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'action',
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
