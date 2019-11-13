# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # The base definition of a secret type.
    #
    class LinkedIntegrationRuntimeRbac < LinkedIntegrationRuntimeProperties

      include MsRestAzure


      def initialize
        @authorizationType = "RBAC"
      end

      attr_accessor :authorizationType

      # @return [String] The resource ID of the integration runtime to be
      # shared.
      attr_accessor :resource_id


      #
      # Mapper for LinkedIntegrationRuntimeRbac class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RBAC',
          type: {
            name: 'Composite',
            class_name: 'LinkedIntegrationRuntimeRbac',
            model_properties: {
              authorizationType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'authorizationType',
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'resourceId',
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