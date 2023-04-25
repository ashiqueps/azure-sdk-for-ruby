# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_07_01
  module Models
    #
    # Application gateway client authentication configuration.
    #
    class ApplicationGatewayClientAuthConfiguration

      include MsRestAzure2

      # @return [Boolean] Verify client certificate issuer name on the
      # application gateway.
      attr_accessor :verify_client_cert_issuer_dn


      #
      # Mapper for ApplicationGatewayClientAuthConfiguration class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayClientAuthConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayClientAuthConfiguration',
            model_properties: {
              verify_client_cert_issuer_dn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'verifyClientCertIssuerDN',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
