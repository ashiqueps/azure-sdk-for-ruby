# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_04_01
  module Models
    #
    # Describes the connection monitor endpoint.
    #
    class ConnectionMonitorEndpoint

      include MsRestAzure2

      # @return [String] The name of the connection monitor endpoint.
      attr_accessor :name

      # @return [String] Resource ID of the connection monitor endpoint.
      attr_accessor :resource_id

      # @return [String] Address of the connection monitor endpoint (IP or
      # domain name).
      attr_accessor :address

      # @return [ConnectionMonitorEndpointFilter] Filter for sub-items within
      # the endpoint.
      attr_accessor :filter


      #
      # Mapper for ConnectionMonitorEndpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionMonitorEndpoint',
          type: {
            name: 'Composite',
            class_name: 'ConnectionMonitorEndpoint',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
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
              filter: {
                client_side_validation: true,
                required: false,
                serialized_name: 'filter',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectionMonitorEndpointFilter'
                }
              }
            }
          }
        }
      end
    end
  end
end
