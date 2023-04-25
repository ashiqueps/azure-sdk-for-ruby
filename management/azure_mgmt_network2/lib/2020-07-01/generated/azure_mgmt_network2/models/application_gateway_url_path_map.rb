# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_07_01
  module Models
    #
    # UrlPathMaps give a url path to the backend mapping information for
    # PathBasedRouting.
    #
    class ApplicationGatewayUrlPathMap < SubResource

      include MsRestAzure2

      # @return [SubResource] Default backend address pool resource of URL path
      # map.
      attr_accessor :default_backend_address_pool

      # @return [SubResource] Default backend http settings resource of URL
      # path map.
      attr_accessor :default_backend_http_settings

      # @return [SubResource] Default Rewrite rule set resource of URL path
      # map.
      attr_accessor :default_rewrite_rule_set

      # @return [SubResource] Default redirect configuration resource of URL
      # path map.
      attr_accessor :default_redirect_configuration

      # @return [Array<ApplicationGatewayPathRule>] Path rule of URL path map
      # resource.
      attr_accessor :path_rules

      # @return [ProvisioningState] The provisioning state of the URL path map
      # resource. Possible values include: 'Succeeded', 'Updating', 'Deleting',
      # 'Failed'
      attr_accessor :provisioning_state

      # @return [String] Name of the URL path map that is unique within an
      # Application Gateway.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Type of the resource.
      attr_accessor :type


      #
      # Mapper for ApplicationGatewayUrlPathMap class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayUrlPathMap',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayUrlPathMap',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              default_backend_address_pool: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.defaultBackendAddressPool',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              default_backend_http_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.defaultBackendHttpSettings',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              default_rewrite_rule_set: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.defaultRewriteRuleSet',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              default_redirect_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.defaultRedirectConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              path_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.pathRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayPathRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayPathRule'
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
