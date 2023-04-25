# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_03_01
  module Models
    #
    # Parameters that define the source of the connection.
    #
    class ConnectivitySource

      include MsRestAzure2

      # @return [String] The ID of the resource from which a connectivity check
      # will be initiated.
      attr_accessor :resource_id

      # @return [Integer] The source port from which a connectivity check will
      # be performed.
      attr_accessor :port


      #
      # Mapper for ConnectivitySource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectivitySource',
          type: {
            name: 'Composite',
            class_name: 'ConnectivitySource',
            model_properties: {
              resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'port',
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
