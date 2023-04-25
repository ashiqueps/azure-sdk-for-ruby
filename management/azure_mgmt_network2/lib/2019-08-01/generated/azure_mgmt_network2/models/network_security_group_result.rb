# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_08_01
  module Models
    #
    # Network configuration diagnostic result corresponded provided traffic
    # query.
    #
    class NetworkSecurityGroupResult

      include MsRestAzure2

      # @return [SecurityRuleAccess] The network traffic is allowed or denied.
      # Possible values include: 'Allow', 'Deny'
      attr_accessor :security_rule_access_result

      # @return [Array<EvaluatedNetworkSecurityGroup>] List of results network
      # security groups diagnostic.
      attr_accessor :evaluated_network_security_groups


      #
      # Mapper for NetworkSecurityGroupResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkSecurityGroupResult',
          type: {
            name: 'Composite',
            class_name: 'NetworkSecurityGroupResult',
            model_properties: {
              security_rule_access_result: {
                client_side_validation: true,
                required: false,
                serialized_name: 'securityRuleAccessResult',
                type: {
                  name: 'String'
                }
              },
              evaluated_network_security_groups: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'evaluatedNetworkSecurityGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EvaluatedNetworkSecurityGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EvaluatedNetworkSecurityGroup'
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
