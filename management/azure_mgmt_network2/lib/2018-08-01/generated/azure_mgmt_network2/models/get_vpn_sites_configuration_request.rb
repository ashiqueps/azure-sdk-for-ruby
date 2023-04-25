# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_08_01
  module Models
    #
    # List of Vpn-Sites
    #
    class GetVpnSitesConfigurationRequest

      include MsRestAzure2

      # @return [Array<String>] List of resource-ids of the vpn-sites for which
      # config is to be downloaded.
      attr_accessor :vpn_sites

      # @return [String] The sas-url to download the configurations for
      # vpn-sites
      attr_accessor :output_blob_sas_url


      #
      # Mapper for GetVpnSitesConfigurationRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GetVpnSitesConfigurationRequest',
          type: {
            name: 'Composite',
            class_name: 'GetVpnSitesConfigurationRequest',
            model_properties: {
              vpn_sites: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vpnSites',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              output_blob_sas_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'outputBlobSasUrl',
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
