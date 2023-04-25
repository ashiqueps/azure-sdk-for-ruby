# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2016_09_01
  module Models
    #
    # Application gateway backendhealth http settings.
    #
    class ApplicationGatewayBackendHealthServer

      include MsRestAzure2

      # @return [String] IP address or FQDN of backend server.
      attr_accessor :address

      # @return [SubResource] Reference of IP configuration of backend server.
      attr_accessor :ip_configuration

      # @return [ApplicationGatewayBackendHealthServerHealth] Health of backend
      # server. Possible values are: 'Unknown', 'Up', 'Down', and 'Partial'.
      # Possible values include: 'Unknown', 'Up', 'Down', 'Partial'
      attr_accessor :health


      #
      # Mapper for ApplicationGatewayBackendHealthServer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayBackendHealthServer',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayBackendHealthServer',
            model_properties: {
              address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'address',
                type: {
                  name: 'String'
                }
              },
              ip_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              health: {
                client_side_validation: true,
                required: false,
                serialized_name: 'health',
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
