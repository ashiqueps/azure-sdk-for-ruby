# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources2::Mgmt::V2018_02_01
  module Models
    #
    # Deployment operation information.
    #
    class DeploymentOperation

      include MsRestAzure2

      # @return [String] Full deployment operation ID.
      attr_accessor :id

      # @return [String] Deployment operation ID.
      attr_accessor :operation_id

      # @return [DeploymentOperationProperties] Deployment properties.
      attr_accessor :properties


      #
      # Mapper for DeploymentOperation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeploymentOperation',
          type: {
            name: 'Composite',
            class_name: 'DeploymentOperation',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              operation_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'operationId',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'DeploymentOperationProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
