# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_08_01
  module Models
    #
    # Backend address of an application gateway.
    #
    class ApplicationGatewayBackendAddress

      include MsRestAzure2

      # @return [String] Fully qualified domain name (FQDN).
      attr_accessor :fqdn

      # @return [String] IP address
      attr_accessor :ip_address


      #
      # Mapper for ApplicationGatewayBackendAddress class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayBackendAddress',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayBackendAddress',
            model_properties: {
              fqdn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fqdn',
                type: {
                  name: 'String'
                }
              },
              ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipAddress',
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
