# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_12_01
  module Models
    #
    # VpnClientConfiguration for P2S client.
    #
    class VpnClientConfiguration

      include MsRestAzure2

      # @return [AddressSpace] The reference of the address space resource
      # which represents Address space for P2S VpnClient.
      attr_accessor :vpn_client_address_pool

      # @return [Array<VpnClientRootCertificate>] VpnClientRootCertificate for
      # virtual network gateway.
      attr_accessor :vpn_client_root_certificates

      # @return [Array<VpnClientRevokedCertificate>]
      # VpnClientRevokedCertificate for Virtual network gateway.
      attr_accessor :vpn_client_revoked_certificates

      # @return [Array<VpnClientProtocol>] VpnClientProtocols for Virtual
      # network gateway.
      attr_accessor :vpn_client_protocols

      # @return [Array<IpsecPolicy>] VpnClientIpsecPolicies for virtual network
      # gateway P2S client.
      attr_accessor :vpn_client_ipsec_policies

      # @return [String] The radius server address property of the
      # VirtualNetworkGateway resource for vpn client connection.
      attr_accessor :radius_server_address

      # @return [String] The radius secret property of the
      # VirtualNetworkGateway resource for vpn client connection.
      attr_accessor :radius_server_secret


      #
      # Mapper for VpnClientConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VpnClientConfiguration',
          type: {
            name: 'Composite',
            class_name: 'VpnClientConfiguration',
            model_properties: {
              vpn_client_address_pool: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vpnClientAddressPool',
                type: {
                  name: 'Composite',
                  class_name: 'AddressSpace'
                }
              },
              vpn_client_root_certificates: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vpnClientRootCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VpnClientRootCertificateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VpnClientRootCertificate'
                      }
                  }
                }
              },
              vpn_client_revoked_certificates: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vpnClientRevokedCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VpnClientRevokedCertificateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VpnClientRevokedCertificate'
                      }
                  }
                }
              },
              vpn_client_protocols: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vpnClientProtocols',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VpnClientProtocolElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              vpn_client_ipsec_policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vpnClientIpsecPolicies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IpsecPolicyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IpsecPolicy'
                      }
                  }
                }
              },
              radius_server_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'radiusServerAddress',
                type: {
                  name: 'String'
                }
              },
              radius_server_secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'radiusServerSecret',
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
