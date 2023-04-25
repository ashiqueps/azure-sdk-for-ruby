# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_08_01
  module Models
    #
    # Network security rule.
    #
    class SecurityRule < SubResource

      include MsRestAzure2

      # @return [String] A description for this rule. Restricted to 140 chars.
      attr_accessor :description

      # @return [SecurityRuleProtocol] Network protocol this rule applies to.
      # Possible values include: 'Tcp', 'Udp', 'Icmp', 'Esp', '*', 'Ah'
      attr_accessor :protocol

      # @return [String] The source port or range. Integer or range between 0
      # and 65535. Asterisk '*' can also be used to match all ports.
      attr_accessor :source_port_range

      # @return [String] The destination port or range. Integer or range
      # between 0 and 65535. Asterisk '*' can also be used to match all ports.
      attr_accessor :destination_port_range

      # @return [String] The CIDR or source IP range. Asterisk '*' can also be
      # used to match all source IPs. Default tags such as 'VirtualNetwork',
      # 'AzureLoadBalancer' and 'Internet' can also be used. If this is an
      # ingress rule, specifies where network traffic originates from.
      attr_accessor :source_address_prefix

      # @return [Array<String>] The CIDR or source IP ranges.
      attr_accessor :source_address_prefixes

      # @return [Array<ApplicationSecurityGroup>] The application security
      # group specified as source.
      attr_accessor :source_application_security_groups

      # @return [String] The destination address prefix. CIDR or destination IP
      # range. Asterisk '*' can also be used to match all source IPs. Default
      # tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can
      # also be used.
      attr_accessor :destination_address_prefix

      # @return [Array<String>] The destination address prefixes. CIDR or
      # destination IP ranges.
      attr_accessor :destination_address_prefixes

      # @return [Array<ApplicationSecurityGroup>] The application security
      # group specified as destination.
      attr_accessor :destination_application_security_groups

      # @return [Array<String>] The source port ranges.
      attr_accessor :source_port_ranges

      # @return [Array<String>] The destination port ranges.
      attr_accessor :destination_port_ranges

      # @return [SecurityRuleAccess] The network traffic is allowed or denied.
      # Possible values include: 'Allow', 'Deny'
      attr_accessor :access

      # @return [Integer] The priority of the rule. The value can be between
      # 100 and 4096. The priority number must be unique for each rule in the
      # collection. The lower the priority number, the higher the priority of
      # the rule.
      attr_accessor :priority

      # @return [SecurityRuleDirection] The direction of the rule. The
      # direction specifies if rule will be evaluated on incoming or outgoing
      # traffic. Possible values include: 'Inbound', 'Outbound'
      attr_accessor :direction

      # @return [ProvisioningState] The provisioning state of the security rule
      # resource. Possible values include: 'Succeeded', 'Updating', 'Deleting',
      # 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] The type of the resource.
      attr_accessor :type


      #
      # Mapper for SecurityRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SecurityRule',
          type: {
            name: 'Composite',
            class_name: 'SecurityRule',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              protocol: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.protocol',
                type: {
                  name: 'String'
                }
              },
              source_port_range: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sourcePortRange',
                type: {
                  name: 'String'
                }
              },
              destination_port_range: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.destinationPortRange',
                type: {
                  name: 'String'
                }
              },
              source_address_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sourceAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              source_address_prefixes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sourceAddressPrefixes',
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
              source_application_security_groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sourceApplicationSecurityGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationSecurityGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationSecurityGroup'
                      }
                  }
                }
              },
              destination_address_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.destinationAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              destination_address_prefixes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.destinationAddressPrefixes',
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
              destination_application_security_groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.destinationApplicationSecurityGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationSecurityGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationSecurityGroup'
                      }
                  }
                }
              },
              source_port_ranges: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sourcePortRanges',
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
              destination_port_ranges: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.destinationPortRanges',
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
              access: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.access',
                type: {
                  name: 'String'
                }
              },
              priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.priority',
                type: {
                  name: 'Number'
                }
              },
              direction: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.direction',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
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
