# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_07_01
  module Models
    #
    # Describes the destination of connection monitor.
    #
    class ConnectionMonitorDestination

      include MsRestAzure2

      # @return [String] The ID of the resource used as the destination by
      # connection monitor.
      attr_accessor :resource_id

      # @return [String] Address of the connection monitor destination (IP or
      # domain name).
      attr_accessor :address

      # @return [Integer] The destination port used by connection monitor.
      attr_accessor :port


      #
      # Mapper for ConnectionMonitorDestination class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionMonitorDestination',
          type: {
            name: 'Composite',
            class_name: 'ConnectionMonitorDestination',
            model_properties: {
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'address',
                type: {
                  name: 'String'
                }
              },
              port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'port',
                constraints: {
                  InclusiveMaximum: 65535,
                  InclusiveMinimum: 0
                },
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
