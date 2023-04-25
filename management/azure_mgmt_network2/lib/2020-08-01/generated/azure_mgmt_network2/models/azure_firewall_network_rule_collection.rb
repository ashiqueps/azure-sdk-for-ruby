# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_08_01
  module Models
    #
    # Network rule collection resource.
    #
    class AzureFirewallNetworkRuleCollection < SubResource

      include MsRestAzure2

      # @return [Integer] Priority of the network rule collection resource.
      attr_accessor :priority

      # @return [AzureFirewallRCAction] The action type of a rule collection.
      attr_accessor :action

      # @return [Array<AzureFirewallNetworkRule>] Collection of rules used by a
      # network rule collection.
      attr_accessor :rules

      # @return [ProvisioningState] The provisioning state of the network rule
      # collection resource. Possible values include: 'Succeeded', 'Updating',
      # 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within the
      # Azure firewall. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for AzureFirewallNetworkRuleCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureFirewallNetworkRuleCollection',
          type: {
            name: 'Composite',
            class_name: 'AzureFirewallNetworkRuleCollection',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.priority',
                constraints: {
                  InclusiveMaximum: 65000,
                  InclusiveMinimum: 100
                },
                type: {
                  name: 'Number'
                }
              },
              action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.action',
                type: {
                  name: 'Composite',
                  class_name: 'AzureFirewallRCAction'
                }
              },
              rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.rules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureFirewallNetworkRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureFirewallNetworkRule'
                      }
                  }
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
              }
            }
          }
        }
      end
    end
  end
end
