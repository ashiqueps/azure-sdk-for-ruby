# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_12_01
  module Models
    #
    # Set of actions in the Rewrite Rule in Application Gateway.
    #
    class ApplicationGatewayRewriteRuleActionSet

      include MsRestAzure2

      # @return [Array<ApplicationGatewayHeaderConfiguration>] Request Header
      # Actions in the Action Set.
      attr_accessor :request_header_configurations

      # @return [Array<ApplicationGatewayHeaderConfiguration>] Response Header
      # Actions in the Action Set.
      attr_accessor :response_header_configurations

      # @return [ApplicationGatewayUrlConfiguration] Url Configuration Action
      # in the Action Set.
      attr_accessor :url_configuration


      #
      # Mapper for ApplicationGatewayRewriteRuleActionSet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayRewriteRuleActionSet',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayRewriteRuleActionSet',
            model_properties: {
              request_header_configurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requestHeaderConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayHeaderConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayHeaderConfiguration'
                      }
                  }
                }
              },
              response_header_configurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'responseHeaderConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayHeaderConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayHeaderConfiguration'
                      }
                  }
                }
              },
              url_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'urlConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicationGatewayUrlConfiguration'
                }
              }
            }
          }
        }
      end
    end
  end
end
