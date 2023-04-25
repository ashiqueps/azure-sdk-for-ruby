# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_10_01
  module Models
    #
    # Properties of a NAT rule.
    #
    class AzureFirewallNatRule

      include MsRestAzure2

      # @return [String] Name of the NAT rule.
      attr_accessor :name

      # @return [String] Description of the rule.
      attr_accessor :description

      # @return [Array<String>] List of source IP addresses for this rule.
      attr_accessor :source_addresses

      # @return [Array<String>] List of destination IP addresses for this rule.
      attr_accessor :destination_addresses

      # @return [Array<String>] List of destination ports.
      attr_accessor :destination_ports

      # @return [Array<AzureFirewallNetworkRuleProtocol>] Array of
      # AzureFirewallNetworkRuleProtocols applicable to this NAT rule.
      attr_accessor :protocols

      # @return [String] The translated address for this NAT rule.
      attr_accessor :translated_address

      # @return [String] The translated port for this NAT rule.
      attr_accessor :translated_port


      #
      # Mapper for AzureFirewallNatRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureFirewallNatRule',
          type: {
            name: 'Composite',
            class_name: 'AzureFirewallNatRule',
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
              destination_addresses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destinationAddresses',
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
              destination_ports: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destinationPorts',
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
                      serialized_name: 'AzureFirewallNetworkRuleProtocolElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              translated_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'translatedAddress',
                type: {
                  name: 'String'
                }
              },
              translated_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'translatedPort',
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
