# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_04_01
  module Models
    #
    # List of connection monitors.
    #
    class ConnectionMonitorListResult

      include MsRestAzure2

      # @return [Array<ConnectionMonitorResult>] Information about connection
      # monitors.
      attr_accessor :value


      #
      # Mapper for ConnectionMonitorListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionMonitorListResult',
          type: {
            name: 'Composite',
            class_name: 'ConnectionMonitorListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConnectionMonitorResultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectionMonitorResult'
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
