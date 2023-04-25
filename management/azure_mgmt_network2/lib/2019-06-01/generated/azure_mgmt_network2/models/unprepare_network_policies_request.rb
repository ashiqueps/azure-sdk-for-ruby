# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_06_01
  module Models
    #
    # Details of UnprepareNetworkPolicies for Subnet.
    #
    class UnprepareNetworkPoliciesRequest

      include MsRestAzure2

      # @return [String] The name of the service for which subnet is being
      # unprepared for.
      attr_accessor :service_name


      #
      # Mapper for UnprepareNetworkPoliciesRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UnprepareNetworkPoliciesRequest',
          type: {
            name: 'Composite',
            class_name: 'UnprepareNetworkPoliciesRequest',
            model_properties: {
              service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceName',
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
