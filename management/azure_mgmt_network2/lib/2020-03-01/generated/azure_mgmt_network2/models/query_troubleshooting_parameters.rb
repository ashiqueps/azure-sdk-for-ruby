# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_03_01
  module Models
    #
    # Parameters that define the resource to query the troubleshooting result.
    #
    class QueryTroubleshootingParameters

      include MsRestAzure2

      # @return [String] The target resource ID to query the troubleshooting
      # result.
      attr_accessor :target_resource_id


      #
      # Mapper for QueryTroubleshootingParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'QueryTroubleshootingParameters',
          type: {
            name: 'Composite',
            class_name: 'QueryTroubleshootingParameters',
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