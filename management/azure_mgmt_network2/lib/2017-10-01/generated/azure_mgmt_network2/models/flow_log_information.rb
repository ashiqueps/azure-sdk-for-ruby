# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2017_10_01
  module Models
    #
    # Information on the configuration of flow log.
    #
    class FlowLogInformation

      include MsRestAzure2

      # @return [String] The ID of the resource to configure for flow logging.
      attr_accessor :target_resource_id

      # @return [String] ID of the storage account which is used to store the
      # flow log.
      attr_accessor :storage_id

      # @return [Boolean] Flag to enable/disable flow logging.
      attr_accessor :enabled

      # @return [RetentionPolicyParameters]
      attr_accessor :retention_policy


      #
      # Mapper for FlowLogInformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FlowLogInformation',
          type: {
            name: 'Composite',
            class_name: 'FlowLogInformation',
            model_properties: {
              target_resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'targetResourceId',
                type: {
                  name: 'String'
                }
              },
              storage_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.storageId',
                type: {
                  name: 'String'
                }
              },
              enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.enabled',
                type: {
                  name: 'Boolean'
                }
              },
              retention_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.retentionPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'RetentionPolicyParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end
