# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_09_01
  module Models
    #
    # Parameters that determine how the connectivity check will be performed.
    #
    class ConnectivityParameters

      include MsRestAzure2

      # @return [ConnectivitySource] Describes the source of the connection.
      attr_accessor :source

      # @return [ConnectivityDestination] Describes the destination of
      # connection.
      attr_accessor :destination

      # @return [Protocol] Network protocol. Possible values include: 'Tcp',
      # 'Http', 'Https', 'Icmp'
      attr_accessor :protocol

      # @return [ProtocolConfiguration] Configuration of the protocol.
      attr_accessor :protocol_configuration

      # @return [IPVersion] Preferred IP version of the connection. Possible
      # values include: 'IPv4', 'IPv6'
      attr_accessor :preferred_ipversion


      #
      # Mapper for ConnectivityParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectivityParameters',
          type: {
            name: 'Composite',
            class_name: 'ConnectivityParameters',
            model_properties: {
              source: {
                client_side_validation: true,
                required: true,
                serialized_name: 'source',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectivitySource'
                }
              },
              destination: {
                client_side_validation: true,
                required: true,
                serialized_name: 'destination',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectivityDestination'
                }
              },
              protocol: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protocol',
                type: {
                  name: 'String'
                }
              },
              protocol_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protocolConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'ProtocolConfiguration'
                }
              },
              preferred_ipversion: {
                client_side_validation: true,
                required: false,
                serialized_name: 'preferredIPVersion',
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
