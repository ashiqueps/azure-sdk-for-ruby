# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_05_01
  module Models
    #
    # Details of PrepareNetworkPolicies for Subnet.
    #
    class PrepareNetworkPoliciesRequest

      include MsRestAzure2

      # @return [String] The name of the service for which subnet is being
      # prepared for.
      attr_accessor :service_name

      # @return [Array<NetworkIntentPolicyConfiguration>] A list of
      # NetworkIntentPolicyConfiguration.
      attr_accessor :network_intent_policy_configurations


      #
      # Mapper for PrepareNetworkPoliciesRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrepareNetworkPoliciesRequest',
          type: {
            name: 'Composite',
            class_name: 'PrepareNetworkPoliciesRequest',
            model_properties: {
              service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceName',
                type: {
                  name: 'String'
                }
              },
              network_intent_policy_configurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkIntentPolicyConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NetworkIntentPolicyConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkIntentPolicyConfiguration'
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
