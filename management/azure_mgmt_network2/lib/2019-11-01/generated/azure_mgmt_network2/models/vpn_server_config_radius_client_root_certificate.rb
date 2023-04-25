# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_11_01
  module Models
    #
    # Properties of the Radius client root certificate of
    # VpnServerConfiguration.
    #
    class VpnServerConfigRadiusClientRootCertificate

      include MsRestAzure2

      # @return [String] The certificate name.
      attr_accessor :name

      # @return [String] The Radius client root certificate thumbprint.
      attr_accessor :thumbprint


      #
      # Mapper for VpnServerConfigRadiusClientRootCertificate class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VpnServerConfigRadiusClientRootCertificate',
          type: {
            name: 'Composite',
            class_name: 'VpnServerConfigRadiusClientRootCertificate',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              thumbprint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'thumbprint',
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
