# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourcesManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # The results of an asynchronous operation.
    #
    class OperationResults

      include MsRestAzure

      # @return [String] The fully qualified ID for the management group.  For
      # example,
      # /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
      attr_accessor :id

      # @return [String] The type of the resource.  For example,
      # /providers/Microsoft.Management/managementGroups
      attr_accessor :type

      # @return [String] The name of the management group. For example,
      # 00000000-0000-0000-0000-000000000000
      attr_accessor :name

      # @return [Enum] Provisioning State. Possible values include: 'Updating'
      attr_accessor :provisioning_state


      #
      # Mapper for OperationResults class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationResults',
          type: {
            name: 'Composite',
            class_name: 'OperationResults',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
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
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
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