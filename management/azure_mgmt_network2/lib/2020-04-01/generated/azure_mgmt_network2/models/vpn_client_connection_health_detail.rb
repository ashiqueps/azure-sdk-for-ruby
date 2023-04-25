# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_04_01
  module Models
    #
    # VPN client connection health detail.
    #
    class VpnClientConnectionHealthDetail

      include MsRestAzure2

      # @return [String] The vpn client Id.
      attr_accessor :vpn_connection_id

      # @return [Integer] The duration time of a connected vpn client.
      attr_accessor :vpn_connection_duration

      # @return [String] The start time of a connected vpn client.
      attr_accessor :vpn_connection_time

      # @return [String] The public Ip of a connected vpn client.
      attr_accessor :public_ip_address

      # @return [String] The assigned private Ip of a connected vpn client.
      attr_accessor :private_ip_address

      # @return [String] The user name of a connected vpn client.
      attr_accessor :vpn_user_name

      # @return [Integer] The max band width.
      attr_accessor :max_bandwidth

      # @return [Integer] The egress packets per second.
      attr_accessor :egress_packets_transferred

      # @return [Integer] The egress bytes per second.
      attr_accessor :egress_bytes_transferred

      # @return [Integer] The ingress packets per second.
      attr_accessor :ingress_packets_transferred

      # @return [Integer] The ingress bytes per second.
      attr_accessor :ingress_bytes_transferred

      # @return [Integer] The max packets transferred per second.
      attr_accessor :max_packets_per_second


      #
      # Mapper for VpnClientConnectionHealthDetail class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VpnClientConnectionHealthDetail',
          type: {
            name: 'Composite',
            class_name: 'VpnClientConnectionHealthDetail',
            model_properties: {
              vpn_connection_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'vpnConnectionId',
                type: {
                  name: 'String'
                }
              },
              vpn_connection_duration: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'vpnConnectionDuration',
                type: {
                  name: 'Number'
                }
              },
              vpn_connection_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'vpnConnectionTime',
                type: {
                  name: 'String'
                }
              },
              public_ip_address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'publicIpAddress',
                type: {
                  name: 'String'
                }
              },
              private_ip_address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'privateIpAddress',
                type: {
                  name: 'String'
                }
              },
              vpn_user_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'vpnUserName',
                type: {
                  name: 'String'
                }
              },
              max_bandwidth: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'maxBandwidth',
                type: {
                  name: 'Number'
                }
              },
              egress_packets_transferred: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'egressPacketsTransferred',
                type: {
                  name: 'Number'
                }
              },
              egress_bytes_transferred: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'egressBytesTransferred',
                type: {
                  name: 'Number'
                }
              },
              ingress_packets_transferred: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'ingressPacketsTransferred',
                type: {
                  name: 'Number'
                }
              },
              ingress_bytes_transferred: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'ingressBytesTransferred',
                type: {
                  name: 'Number'
                }
              },
              max_packets_per_second: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'maxPacketsPerSecond',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
