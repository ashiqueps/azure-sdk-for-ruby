# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_07_01
  module Models
    #
    # Describes the connection monitor endpoint scope.
    #
    class ConnectionMonitorEndpointScope

      include MsRestAzure2

      # @return [Array<ConnectionMonitorEndpointScopeItem>] List of items which
      # needs to be included to the endpoint scope.
      attr_accessor :include

      # @return [Array<ConnectionMonitorEndpointScopeItem>] List of items which
      # needs to be excluded from the endpoint scope.
      attr_accessor :exclude


      #
      # Mapper for ConnectionMonitorEndpointScope class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionMonitorEndpointScope',
          type: {
            name: 'Composite',
            class_name: 'ConnectionMonitorEndpointScope',
            model_properties: {
              include: {
                client_side_validation: true,
                required: false,
                serialized_name: 'include',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConnectionMonitorEndpointScopeItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectionMonitorEndpointScopeItem'
                      }
                  }
                }
              },
              exclude: {
                client_side_validation: true,
                required: false,
                serialized_name: 'exclude',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConnectionMonitorEndpointScopeItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectionMonitorEndpointScopeItem'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
