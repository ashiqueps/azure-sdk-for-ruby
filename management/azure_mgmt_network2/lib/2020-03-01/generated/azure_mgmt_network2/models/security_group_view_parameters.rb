# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_03_01
  module Models
    #
    # Parameters that define the VM to check security groups for.
    #
    class SecurityGroupViewParameters

      include MsRestAzure2

      # @return [String] ID of the target VM.
      attr_accessor :target_resource_id


      #
      # Mapper for SecurityGroupViewParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SecurityGroupViewParameters',
          type: {
            name: 'Composite',
            class_name: 'SecurityGroupViewParameters',
            model_properties: {
              target_resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'targetResourceId',
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
