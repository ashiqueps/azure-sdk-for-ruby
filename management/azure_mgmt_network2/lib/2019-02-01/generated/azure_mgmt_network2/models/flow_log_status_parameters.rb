# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_02_01
  module Models
    #
    # Parameters that define a resource to query flow log and traffic analytics
    # (optional) status.
    #
    class FlowLogStatusParameters

      include MsRestAzure2

      # @return [String] The target resource where getting the flow log and
      # traffic analytics (optional) status.
      attr_accessor :target_resource_id


      #
      # Mapper for FlowLogStatusParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FlowLogStatusParameters',
          type: {
            name: 'Composite',
            class_name: 'FlowLogStatusParameters',
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
