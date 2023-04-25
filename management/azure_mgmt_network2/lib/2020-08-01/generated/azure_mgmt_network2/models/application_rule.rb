# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_08_01
  module Models
    #
    # Rule of type application.
    #
    class ApplicationRule < FirewallPolicyRule

      include MsRestAzure2


      def initialize
        @ruleType = "ApplicationRule"
      end

      attr_accessor :ruleType

      # @return [Array<String>] List of source IP addresses for this rule.
      attr_accessor :source_addresses

      # @return [Array<String>] List of destination IP addresses or Service
      # Tags.
      attr_accessor :destination_addresses

      # @return [Array<FirewallPolicyRuleApplicationProtocol>] Array of
      # Application Protocols.
      attr_accessor :protocols

      # @return [Array<String>] List of FQDNs for this rule.
      attr_accessor :target_fqdns

      # @return [Array<String>] List of Urls for this rule condition.
      attr_accessor :target_urls

      # @return [Array<String>] List of FQDN Tags for this rule.
      attr_accessor :fqdn_tags

      # @return [Array<String>] List of source IpGroups for this rule.
      attr_accessor :source_ip_groups

      # @return [Boolean] Terminate TLS connections for this rule.
      attr_accessor :terminate_tls

      # @return [Array<String>] List of destination azure web categories.
      attr_accessor :web_categories


      #
      # Mapper for ApplicationRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationRule',
          type: {
            name: 'Composite',
            class_name: 'ApplicationRule',
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
              ruleType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ruleType',
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
              protocols: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protocols',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FirewallPolicyRuleApplicationProtocolElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FirewallPolicyRuleApplicationProtocol'
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
              target_urls: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetUrls',
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
              },
              terminate_tls: {
                client_side_validation: true,
                required: false,
                serialized_name: 'terminateTLS',
                type: {
                  name: 'Boolean'
                }
              },
              web_categories: {
                client_side_validation: true,
                required: false,
                serialized_name: 'webCategories',
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
