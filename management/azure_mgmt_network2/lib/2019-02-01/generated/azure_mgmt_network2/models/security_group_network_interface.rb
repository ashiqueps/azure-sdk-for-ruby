# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_02_01
  module Models
    #
    # Network interface and all its associated security rules.
    #
    class SecurityGroupNetworkInterface

      include MsRestAzure2

      # @return [String] ID of the network interface.
      attr_accessor :id

      # @return [SecurityRuleAssociations] All security rules associated with
      # the network interface.
      attr_accessor :security_rule_associations


      #
      # Mapper for SecurityGroupNetworkInterface class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SecurityGroupNetworkInterface',
          type: {
            name: 'Composite',
            class_name: 'SecurityGroupNetworkInterface',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              security_rule_associations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'securityRuleAssociations',
                type: {
                  name: 'Composite',
                  class_name: 'SecurityRuleAssociations'
                }
              }
            }
          }
        }
      end
    end
  end
end
