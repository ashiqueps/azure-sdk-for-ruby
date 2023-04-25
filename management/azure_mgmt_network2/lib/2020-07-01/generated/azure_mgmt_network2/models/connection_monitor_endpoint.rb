# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_07_01
  module Models
    #
    # Describes the connection monitor endpoint.
    #
    class ConnectionMonitorEndpoint

      include MsRestAzure2

      # @return [String] The name of the connection monitor endpoint.
      attr_accessor :name

      # @return [EndpointType] The endpoint type. Possible values include:
      # 'AzureVM', 'AzureVNet', 'AzureSubnet', 'ExternalAddress',
      # 'MMAWorkspaceMachine', 'MMAWorkspaceNetwork'
      attr_accessor :type

      # @return [String] Resource ID of the connection monitor endpoint.
      attr_accessor :resource_id

      # @return [String] Address of the connection monitor endpoint (IP or
      # domain name).
      attr_accessor :address

      # @return [ConnectionMonitorEndpointFilter] Filter for sub-items within
      # the endpoint.
      attr_accessor :filter

      # @return [ConnectionMonitorEndpointScope] Endpoint scope.
      attr_accessor :scope

      # @return [CoverageLevel] Test coverage for the endpoint. Possible values
      # include: 'Default', 'Low', 'BelowAverage', 'Average', 'AboveAverage',
      # 'Full'
      attr_accessor :coverage_level


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
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
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
              },
              scope: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scope',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectionMonitorEndpointScope'
                }
              },
              coverage_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'coverageLevel',
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
