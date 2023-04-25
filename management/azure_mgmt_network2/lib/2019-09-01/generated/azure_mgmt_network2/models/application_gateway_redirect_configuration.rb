# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_09_01
  module Models
    #
    # Redirect configuration of an application gateway.
    #
    class ApplicationGatewayRedirectConfiguration < SubResource

      include MsRestAzure2

      # @return [ApplicationGatewayRedirectType] HTTP redirection type.
      # Possible values include: 'Permanent', 'Found', 'SeeOther', 'Temporary'
      attr_accessor :redirect_type

      # @return [SubResource] Reference to a listener to redirect the request
      # to.
      attr_accessor :target_listener

      # @return [String] Url to redirect the request to.
      attr_accessor :target_url

      # @return [Boolean] Include path in the redirected url.
      attr_accessor :include_path

      # @return [Boolean] Include query string in the redirected url.
      attr_accessor :include_query_string

      # @return [Array<SubResource>] Request routing specifying redirect
      # configuration.
      attr_accessor :request_routing_rules

      # @return [Array<SubResource>] Url path maps specifying default redirect
      # configuration.
      attr_accessor :url_path_maps

      # @return [Array<SubResource>] Path rules specifying redirect
      # configuration.
      attr_accessor :path_rules

      # @return [String] Name of the redirect configuration that is unique
      # within an Application Gateway.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Type of the resource.
      attr_accessor :type


      #
      # Mapper for ApplicationGatewayRedirectConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayRedirectConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayRedirectConfiguration',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              redirect_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.redirectType',
                type: {
                  name: 'String'
                }
              },
              target_listener: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.targetListener',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              target_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.targetUrl',
                type: {
                  name: 'String'
                }
              },
              include_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.includePath',
                type: {
                  name: 'Boolean'
                }
              },
              include_query_string: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.includeQueryString',
                type: {
                  name: 'Boolean'
                }
              },
              request_routing_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.requestRoutingRules',
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
              url_path_maps: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.urlPathMaps',
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
              path_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.pathRules',
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
