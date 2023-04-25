# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_04_01
  module Models
    #
    # A web application firewall rule.
    #
    class ApplicationGatewayFirewallRule

      include MsRestAzure2

      # @return [Integer] The identifier of the web application firewall rule.
      attr_accessor :rule_id

      # @return [String] The description of the web application firewall rule.
      attr_accessor :description


      #
      # Mapper for ApplicationGatewayFirewallRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayFirewallRule',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayFirewallRule',
            model_properties: {
              rule_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ruleId',
                type: {
                  name: 'Number'
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
