# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_10_01
  module Models
    #
    # Properties of the AzureFirewallRCAction.
    #
    class AzureFirewallRCAction

      include MsRestAzure2

      # @return [AzureFirewallRCActionType] The type of action. Possible values
      # include: 'Allow', 'Deny'
      attr_accessor :type


      #
      # Mapper for AzureFirewallRCAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureFirewallRCAction',
          type: {
            name: 'Composite',
            class_name: 'AzureFirewallRCAction',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
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
