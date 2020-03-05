# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Contains the OperationId, OperationState, and OperationType for
    # user-induced operations.
    #
    class OperationStatus

      include MsRestAzure

      # @return A GUID that identifies a call to this API.  This is also passed
      # into the corresponding GetProgress API.
      attr_accessor :operation_id

      # @return [OperationState] The state of the operation. Possible values
      # include: 'Invalid', 'Running', 'RollingBack', 'Completed', 'Faulted',
      # 'Cancelled', 'ForceCancelled'
      attr_accessor :state

      # @return [OperationType] The type of the operation. Possible values
      # include: 'Invalid', 'PartitionDataLoss', 'PartitionQuorumLoss',
      # 'PartitionRestart', 'NodeTransition'
      attr_accessor :type


      #
      # Mapper for OperationStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationStatus',
          type: {
            name: 'Composite',
            class_name: 'OperationStatus',
            model_properties: {
              operation_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'OperationId',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'State',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Type',
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