# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_11_01
  module Models
    #
    # Properties of the application rule protocol.
    #
    class AzureFirewallApplicationRuleProtocol

      include MsRestAzure2

      # @return [AzureFirewallApplicationRuleProtocolType] Protocol type.
      # Possible values include: 'Http', 'Https'
      attr_accessor :protocol_type

      # @return [Integer] Port number for the protocol, cannot be greater than
      # 64000. This field is optional.
      attr_accessor :port


      #
      # Mapper for AzureFirewallApplicationRuleProtocol class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureFirewallApplicationRuleProtocol',
          type: {
            name: 'Composite',
            class_name: 'AzureFirewallApplicationRuleProtocol',
            model_properties: {
              protocol_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protocolType',
                type: {
                  name: 'String'
                }
              },
              port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'port',
                constraints: {
                  InclusiveMaximum: 64000,
                  InclusiveMinimum: 0
                },
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
