# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_07_01
  module Models
    #
    # Request routing rule of an application gateway.
    #
    class ApplicationGatewayRequestRoutingRule < SubResource

      include MsRestAzure2

      # @return [ApplicationGatewayRequestRoutingRuleType] Rule type. Possible
      # values include: 'Basic', 'PathBasedRouting'
      attr_accessor :rule_type

      # @return [Integer] Priority of the request routing rule.
      attr_accessor :priority

      # @return [SubResource] Backend address pool resource of the application
      # gateway.
      attr_accessor :backend_address_pool

      # @return [SubResource] Backend http settings resource of the application
      # gateway.
      attr_accessor :backend_http_settings

      # @return [SubResource] Http listener resource of the application
      # gateway.
      attr_accessor :http_listener

      # @return [SubResource] URL path map resource of the application gateway.
      attr_accessor :url_path_map

      # @return [SubResource] Rewrite Rule Set resource in Basic rule of the
      # application gateway.
      attr_accessor :rewrite_rule_set

      # @return [SubResource] Redirect configuration resource of the
      # application gateway.
      attr_accessor :redirect_configuration

      # @return [ProvisioningState] The provisioning state of the request
      # routing rule resource. Possible values include: 'Succeeded',
      # 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] Name of the request routing rule that is unique within
      # an Application Gateway.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Type of the resource.
      attr_accessor :type


      #
      # Mapper for ApplicationGatewayRequestRoutingRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayRequestRoutingRule',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayRequestRoutingRule',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              rule_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ruleType',
                type: {
                  name: 'String'
                }
              },
              priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.priority',
                constraints: {
                  InclusiveMaximum: 20000,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              backend_address_pool: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.backendAddressPool',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              backend_http_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.backendHttpSettings',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              http_listener: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.httpListener',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              url_path_map: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.urlPathMap',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              rewrite_rule_set: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.rewriteRuleSet',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              redirect_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.redirectConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
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
                read_only: true,
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
