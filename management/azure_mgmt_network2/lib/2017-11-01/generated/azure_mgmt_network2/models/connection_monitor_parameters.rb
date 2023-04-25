# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2017_11_01
  module Models
    #
    # Parameters that define the operation to create a connection monitor.
    #
    class ConnectionMonitorParameters

      include MsRestAzure2

      # @return [ConnectionMonitorSource]
      attr_accessor :source

      # @return [ConnectionMonitorDestination]
      attr_accessor :destination

      # @return [Boolean] Determines if the connection monitor will start
      # automatically once created. Default value: true .
      attr_accessor :auto_start

      # @return [Integer] Monitoring interval in seconds. Default value: 60 .
      attr_accessor :monitoring_interval_in_seconds


      #
      # Mapper for ConnectionMonitorParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionMonitorParameters',
          type: {
            name: 'Composite',
            class_name: 'ConnectionMonitorParameters',
            model_properties: {
              source: {
                client_side_validation: true,
                required: true,
                serialized_name: 'source',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectionMonitorSource'
                }
              },
              destination: {
                client_side_validation: true,
                required: true,
                serialized_name: 'destination',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectionMonitorDestination'
                }
              },
              auto_start: {
                client_side_validation: true,
                required: false,
                serialized_name: 'autoStart',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              },
              monitoring_interval_in_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'monitoringIntervalInSeconds',
                default_value: 60,
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
