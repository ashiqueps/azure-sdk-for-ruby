# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_10_01
  module Models
    #
    # Network configuration diagnostic result corresponded to provided traffic
    # query.
    #
    class NetworkConfigurationDiagnosticResult

      include MsRestAzure2

      # @return [NetworkConfigurationDiagnosticProfile]
      attr_accessor :profile

      # @return [NetworkSecurityGroupResult]
      attr_accessor :network_security_group_result


      #
      # Mapper for NetworkConfigurationDiagnosticResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkConfigurationDiagnosticResult',
          type: {
            name: 'Composite',
            class_name: 'NetworkConfigurationDiagnosticResult',
            model_properties: {
              profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'profile',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkConfigurationDiagnosticProfile'
                }
              },
              network_security_group_result: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkSecurityGroupResult',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkSecurityGroupResult'
                }
              }
            }
          }
        }
      end
    end
  end
end
