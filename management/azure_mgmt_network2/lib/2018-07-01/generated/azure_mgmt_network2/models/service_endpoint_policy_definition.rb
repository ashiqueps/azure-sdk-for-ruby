# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_07_01
  module Models
    #
    # Service Endpoint policy definitions.
    #
    class ServiceEndpointPolicyDefinition < SubResource

      include MsRestAzure2

      # @return [String] A description for this rule. Restricted to 140 chars.
      attr_accessor :description

      # @return [String] service endpoint name.
      attr_accessor :service

      # @return [Array<String>] A list of service resources.
      attr_accessor :service_resources

      # @return [String] The provisioning state of the service end point policy
      # definition. Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for ServiceEndpointPolicyDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceEndpointPolicyDefinition',
          type: {
            name: 'Composite',
            class_name: 'ServiceEndpointPolicyDefinition',
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
              service: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.service',
                type: {
                  name: 'String'
                }
              },
              service_resources: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceResources',
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
