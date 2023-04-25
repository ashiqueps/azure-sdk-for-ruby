# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_06_01
  module Models
    #
    # Http listener of an application gateway.
    #
    class ApplicationGatewayHttpListener < SubResource

      include MsRestAzure2

      # @return [SubResource] Frontend IP configuration resource of an
      # application gateway.
      attr_accessor :frontend_ipconfiguration

      # @return [SubResource] Frontend port resource of an application gateway.
      attr_accessor :frontend_port

      # @return [ApplicationGatewayProtocol] Protocol of the HTTP listener.
      # Possible values include: 'Http', 'Https'
      attr_accessor :protocol

      # @return [String] Host name of HTTP listener.
      attr_accessor :host_name

      # @return [SubResource] SSL certificate resource of an application
      # gateway.
      attr_accessor :ssl_certificate

      # @return [Boolean] Applicable only if protocol is https. Enables SNI for
      # multi-hosting.
      attr_accessor :require_server_name_indication

      # @return [String] Provisioning state of the HTTP listener resource.
      # Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [Array<ApplicationGatewayCustomError>] Custom error
      # configurations of the HTTP listener.
      attr_accessor :custom_error_configurations

      # @return [String] Name of the HTTP listener that is unique within an
      # Application Gateway.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Type of the resource.
      attr_accessor :type


      #
      # Mapper for ApplicationGatewayHttpListener class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayHttpListener',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayHttpListener',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              frontend_ipconfiguration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.frontendIPConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              frontend_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.frontendPort',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              protocol: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.protocol',
                type: {
                  name: 'String'
                }
              },
              host_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hostName',
                type: {
                  name: 'String'
                }
              },
              ssl_certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sslCertificate',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              require_server_name_indication: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.requireServerNameIndication',
                type: {
                  name: 'Boolean'
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
              custom_error_configurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.customErrorConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayCustomErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayCustomError'
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
