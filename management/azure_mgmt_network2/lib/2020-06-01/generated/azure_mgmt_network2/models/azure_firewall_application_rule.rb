# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_06_01
  module Models
    #
    # Properties of an application rule.
    #
    class AzureFirewallApplicationRule

      include MsRestAzure2

      # @return [String] Name of the application rule.
      attr_accessor :name

      # @return [String] Description of the rule.
      attr_accessor :description

      # @return [Array<String>] List of source IP addresses for this rule.
      attr_accessor :source_addresses

      # @return [Array<AzureFirewallApplicationRuleProtocol>] Array of
      # ApplicationRuleProtocols.
      attr_accessor :protocols

      # @return [Array<String>] List of FQDNs for this rule.
      attr_accessor :target_fqdns

      # @return [Array<String>] List of FQDN Tags for this rule.
      attr_accessor :fqdn_tags

      # @return [Array<String>] List of source IpGroups for this rule.
      attr_accessor :source_ip_groups


      #
      # Mapper for AzureFirewallApplicationRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureFirewallApplicationRule',
          type: {
            name: 'Composite',
            class_name: 'AzureFirewallApplicationRule',
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
              },
              source_addresses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceAddresses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              protocols: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protocols',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureFirewallApplicationRuleProtocolElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureFirewallApplicationRuleProtocol'
                      }
                  }
                }
              },
              target_fqdns: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetFqdns',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              fqdn_tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fqdnTags',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              source_ip_groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceIpGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
