# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources2::Mgmt::V2019_05_10
  module Models
    #
    # Deployment filter.
    #
    class DeploymentExtendedFilter

      include MsRestAzure2

      # @return [String] The provisioning state.
      attr_accessor :provisioning_state


      #
      # Mapper for DeploymentExtendedFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeploymentExtendedFilter',
          type: {
            name: 'Composite',
            class_name: 'DeploymentExtendedFilter',
            model_properties: {
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provisioningState',
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
