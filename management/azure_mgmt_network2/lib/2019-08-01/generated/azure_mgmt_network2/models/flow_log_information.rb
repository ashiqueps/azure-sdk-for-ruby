# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_08_01
  module Models
    #
    # Information on the configuration of flow log and traffic analytics
    # (optional) .
    #
    class FlowLogInformation

      include MsRestAzure2

      # @return [String] The ID of the resource to configure for flow log and
      # traffic analytics (optional) .
      attr_accessor :target_resource_id

      # @return [String] ID of the storage account which is used to store the
      # flow log.
      attr_accessor :storage_id

      # @return [Boolean] Flag to enable/disable flow logging.
      attr_accessor :enabled

      # @return [RetentionPolicyParameters] Parameters that define the
      # retention policy for flow log.
      attr_accessor :retention_policy

      # @return [FlowLogFormatParameters] Parameters that define the flow log
      # format.
      attr_accessor :format

      # @return [TrafficAnalyticsProperties] Parameters that define the
      # configuration of traffic analytics.
      attr_accessor :flow_analytics_configuration


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
              },
              format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.format',
                type: {
                  name: 'Composite',
                  class_name: 'FlowLogFormatParameters'
                }
              },
              flow_analytics_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'flowAnalyticsConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'TrafficAnalyticsProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
