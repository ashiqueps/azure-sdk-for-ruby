# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_07_01
  module Models
    #
    # The information of an AvailablePrivateEndpointType.
    #
    class AvailablePrivateEndpointType

      include MsRestAzure2

      # @return [String] The name of the service and resource.
      attr_accessor :name

      # @return [String] A unique identifier of the AvailablePrivateEndpoint
      # Type resource.
      attr_accessor :id

      # @return [String] Resource type.
      attr_accessor :type

      # @return [String] The name of the service and resource.
      attr_accessor :resource_name


      #
      # Mapper for AvailablePrivateEndpointType class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AvailablePrivateEndpointType',
          type: {
            name: 'Composite',
            class_name: 'AvailablePrivateEndpointType',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
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
              resource_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceName',
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
