# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2016_03_30
  module Models
    #
    # Network security rule
    #
    class SecurityRule < SubResource

      include MsRestAzure2

      # @return [String] Gets or sets a description for this rule. Restricted
      # to 140 chars.
      attr_accessor :description

      # @return [SecurityRuleProtocol] Gets or sets Network protocol this rule
      # applies to. Can be Tcp, Udp or All(*). Possible values include: 'Tcp',
      # 'Udp', '*'
      attr_accessor :protocol

      # @return [String] Gets or sets Source Port or Range. Integer or range
      # between 0 and 65535. Asterisk '*' can also be used to match all ports.
      attr_accessor :source_port_range

      # @return [String] Gets or sets Destination Port or Range. Integer or
      # range between 0 and 65535. Asterisk '*' can also be used to match all
      # ports.
      attr_accessor :destination_port_range

      # @return [String] Gets or sets source address prefix. CIDR or source IP
      # range. Asterisk '*' can also be used to match all source IPs. Default
      # tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can
      # also be used. If this is an ingress rule, specifies where network
      # traffic originates from.
      attr_accessor :source_address_prefix

      # @return [String] Gets or sets destination address prefix. CIDR or
      # source IP range. Asterisk '*' can also be used to match all source IPs.
      # Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and
      # 'Internet' can also be used.
      attr_accessor :destination_address_prefix

      # @return [SecurityRuleAccess] Gets or sets network traffic is allowed or
      # denied. Possible values are 'Allow' and 'Deny'. Possible values
      # include: 'Allow', 'Deny'
      attr_accessor :access

      # @return [Integer] Gets or sets the priority of the rule. The value can
      # be between 100 and 4096. The priority number must be unique for each
      # rule in the collection. The lower the priority number, the higher the
      # priority of the rule.
      attr_accessor :priority

      # @return [SecurityRuleDirection] Gets or sets the direction of the
      # rule.InBound or Outbound. The direction specifies if rule will be
      # evaluated on incoming or outgoing traffic. Possible values include:
      # 'Inbound', 'Outbound'
      attr_accessor :direction

      # @return [String] Gets or sets Provisioning state of the PublicIP
      # resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      # @return [String] Gets name of the resource that is unique within a
      # resource group. This name can be used to access the resource
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated
      attr_accessor :etag


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
                required: true,
                serialized_name: 'properties.sourceAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              destination_address_prefix: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.destinationAddressPrefix',
                type: {
                  name: 'String'
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
                serialized_name: 'etag',
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
