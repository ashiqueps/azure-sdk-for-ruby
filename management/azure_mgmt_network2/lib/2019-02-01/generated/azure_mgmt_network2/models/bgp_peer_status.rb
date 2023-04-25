# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_02_01
  module Models
    #
    # BGP peer status details
    #
    class BgpPeerStatus

      include MsRestAzure2

      # @return [String] The virtual network gateway's local address
      attr_accessor :local_address

      # @return [String] The remote BGP peer
      attr_accessor :neighbor

      # @return [Integer] The autonomous system number of the remote BGP peer
      attr_accessor :asn

      # @return [BgpPeerState] The BGP peer state. Possible values include:
      # 'Unknown', 'Stopped', 'Idle', 'Connecting', 'Connected'
      attr_accessor :state

      # @return [String] For how long the peering has been up
      attr_accessor :connected_duration

      # @return [Integer] The number of routes learned from this peer
      attr_accessor :routes_received

      # @return [Integer] The number of BGP messages sent
      attr_accessor :messages_sent

      # @return [Integer] The number of BGP messages received
      attr_accessor :messages_received


      #
      # Mapper for BgpPeerStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BgpPeerStatus',
          type: {
            name: 'Composite',
            class_name: 'BgpPeerStatus',
            model_properties: {
              local_address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'localAddress',
                type: {
                  name: 'String'
                }
              },
              neighbor: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'neighbor',
                type: {
                  name: 'String'
                }
              },
              asn: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'asn',
                type: {
                  name: 'Number'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              connected_duration: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'connectedDuration',
                type: {
                  name: 'String'
                }
              },
              routes_received: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'routesReceived',
                type: {
                  name: 'Number'
                }
              },
              messages_sent: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'messagesSent',
                type: {
                  name: 'Number'
                }
              },
              messages_received: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'messagesReceived',
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
