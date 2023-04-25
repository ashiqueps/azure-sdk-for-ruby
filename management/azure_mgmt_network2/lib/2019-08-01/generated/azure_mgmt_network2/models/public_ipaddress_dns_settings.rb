# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_08_01
  module Models
    #
    # Contains FQDN of the DNS record associated with the public IP address.
    #
    class PublicIPAddressDnsSettings

      include MsRestAzure2

      # @return [String] The domain name label. The concatenation of the domain
      # name label and the regionalized DNS zone make up the fully qualified
      # domain name associated with the public IP address. If a domain name
      # label is specified, an A DNS record is created for the public IP in the
      # Microsoft Azure DNS system.
      attr_accessor :domain_name_label

      # @return [String] The Fully Qualified Domain Name of the A DNS record
      # associated with the public IP. This is the concatenation of the
      # domainNameLabel and the regionalized DNS zone.
      attr_accessor :fqdn

      # @return [String] The reverse FQDN. A user-visible, fully qualified
      # domain name that resolves to this public IP address. If the reverseFqdn
      # is specified, then a PTR DNS record is created pointing from the IP
      # address in the in-addr.arpa domain to the reverse FQDN.
      attr_accessor :reverse_fqdn


      #
      # Mapper for PublicIPAddressDnsSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PublicIPAddressDnsSettings',
          type: {
            name: 'Composite',
            class_name: 'PublicIPAddressDnsSettings',
            model_properties: {
              domain_name_label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'domainNameLabel',
                type: {
                  name: 'String'
                }
              },
              fqdn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fqdn',
                type: {
                  name: 'String'
                }
              },
              reverse_fqdn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'reverseFqdn',
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
