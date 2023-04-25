# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_11_01
  module Models
    #
    # Defines web application firewall policy.
    #
    class WebApplicationFirewallPolicy < Resource

      include MsRestAzure2

      # @return [PolicySettings] The PolicySettings for policy.
      attr_accessor :policy_settings

      # @return [Array<WebApplicationFirewallCustomRule>] The custom rules
      # inside the policy.
      attr_accessor :custom_rules

      # @return [Array<ApplicationGateway>] A collection of references to
      # application gateways.
      attr_accessor :application_gateways

      # @return [ProvisioningState] The provisioning state of the web
      # application firewall policy resource. Possible values include:
      # 'Succeeded', 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [WebApplicationFirewallPolicyResourceState] Resource status of
      # the policy. Resource status of the policy. Possible values include:
      # 'Creating', 'Enabling', 'Enabled', 'Disabling', 'Disabled', 'Deleting'
      attr_accessor :resource_state

      # @return [ManagedRulesDefinition] Describes the managedRules structure.
      attr_accessor :managed_rules

      # @return [Array<SubResource>] A collection of references to application
      # gateway http listeners.
      attr_accessor :http_listeners

      # @return [Array<SubResource>] A collection of references to application
      # gateway path rules.
      attr_accessor :path_based_rules

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for WebApplicationFirewallPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WebApplicationFirewallPolicy',
          type: {
            name: 'Composite',
            class_name: 'WebApplicationFirewallPolicy',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              policy_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.policySettings',
                type: {
                  name: 'Composite',
                  class_name: 'PolicySettings'
                }
              },
              custom_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.customRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'WebApplicationFirewallCustomRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WebApplicationFirewallCustomRule'
                      }
                  }
                }
              },
              application_gateways: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.applicationGateways',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGateway'
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
              resource_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceState',
                type: {
                  name: 'String'
                }
              },
              managed_rules: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.managedRules',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedRulesDefinition'
                }
              },
              http_listeners: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.httpListeners',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              path_based_rules: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.pathBasedRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
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
