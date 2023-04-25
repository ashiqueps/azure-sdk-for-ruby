# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_05_01
  module Models
    #
    # Properties of Radius Server root certificate of VpnServerConfiguration.
    #
    class VpnServerConfigRadiusServerRootCertificate

      include MsRestAzure2

      # @return [String] The certificate name.
      attr_accessor :name

      # @return [String] The certificate public data.
      attr_accessor :public_cert_data


      #
      # Mapper for VpnServerConfigRadiusServerRootCertificate class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VpnServerConfigRadiusServerRootCertificate',
          type: {
            name: 'Composite',
            class_name: 'VpnServerConfigRadiusServerRootCertificate',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              public_cert_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'publicCertData',
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
