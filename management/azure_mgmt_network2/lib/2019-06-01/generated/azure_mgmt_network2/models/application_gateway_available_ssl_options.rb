# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_06_01
  module Models
    #
    # Response for ApplicationGatewayAvailableSslOptions API service call.
    #
    class ApplicationGatewayAvailableSslOptions < Resource

      include MsRestAzure2

      # @return [Array<SubResource>] List of available Ssl predefined policy.
      attr_accessor :predefined_policies

      # @return [ApplicationGatewaySslPolicyName] Name of the Ssl predefined
      # policy applied by default to application gateway. Possible values
      # include: 'AppGwSslPolicy20150501', 'AppGwSslPolicy20170401',
      # 'AppGwSslPolicy20170401S'
      attr_accessor :default_policy

      # @return [Array<ApplicationGatewaySslCipherSuite>] List of available Ssl
      # cipher suites.
      attr_accessor :available_cipher_suites

      # @return [Array<ApplicationGatewaySslProtocol>] List of available Ssl
      # protocols.
      attr_accessor :available_protocols


      #
      # Mapper for ApplicationGatewayAvailableSslOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayAvailableSslOptions',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayAvailableSslOptions',
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
              predefined_policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.predefinedPolicies',
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
              default_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.defaultPolicy',
                type: {
                  name: 'String'
                }
              },
              available_cipher_suites: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.availableCipherSuites',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewaySslCipherSuiteElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              available_protocols: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.availableProtocols',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewaySslProtocolElementType',
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