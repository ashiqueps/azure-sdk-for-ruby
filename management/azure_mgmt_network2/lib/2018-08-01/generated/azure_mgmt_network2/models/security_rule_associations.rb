# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_08_01
  module Models
    #
    # All security rules associated with the network interface.
    #
    class SecurityRuleAssociations

      include MsRestAzure2

      # @return [NetworkInterfaceAssociation]
      attr_accessor :network_interface_association

      # @return [SubnetAssociation]
      attr_accessor :subnet_association

      # @return [Array<SecurityRule>] Collection of default security rules of
      # the network security group.
      attr_accessor :default_security_rules

      # @return [Array<EffectiveNetworkSecurityRule>] Collection of effective
      # security rules.
      attr_accessor :effective_security_rules


      #
      # Mapper for SecurityRuleAssociations class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SecurityRuleAssociations',
          type: {
            name: 'Composite',
            class_name: 'SecurityRuleAssociations',
            model_properties: {
              network_interface_association: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkInterfaceAssociation',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkInterfaceAssociation'
                }
              },
              subnet_association: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subnetAssociation',
                type: {
                  name: 'Composite',
                  class_name: 'SubnetAssociation'
                }
              },
              default_security_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'defaultSecurityRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SecurityRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SecurityRule'
                      }
                  }
                }
              },
              effective_security_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'effectiveSecurityRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EffectiveNetworkSecurityRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EffectiveNetworkSecurityRule'
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
