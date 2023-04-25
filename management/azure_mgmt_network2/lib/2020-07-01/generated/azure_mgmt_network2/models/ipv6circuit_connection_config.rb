# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_07_01
  module Models
    #
    # IPv6 Circuit Connection properties for global reach.
    #
    class Ipv6CircuitConnectionConfig

      include MsRestAzure2

      # @return [String] /125 IP address space to carve out customer addresses
      # for global reach.
      attr_accessor :address_prefix

      # @return [CircuitConnectionStatus] Express Route Circuit connection
      # state. Possible values include: 'Connected', 'Connecting',
      # 'Disconnected'
      attr_accessor :circuit_connection_status


      #
      # Mapper for Ipv6CircuitConnectionConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Ipv6CircuitConnectionConfig',
          type: {
            name: 'Composite',
            class_name: 'Ipv6CircuitConnectionConfig',
            model_properties: {
              address_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'addressPrefix',
                type: {
                  name: 'String'
                }
              },
              circuit_connection_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'circuitConnectionStatus',
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
