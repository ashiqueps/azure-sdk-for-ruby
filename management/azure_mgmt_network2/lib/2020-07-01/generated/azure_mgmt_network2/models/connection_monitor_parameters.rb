# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_07_01
  module Models
    #
    # Parameters that define the operation to create a connection monitor.
    #
    class ConnectionMonitorParameters

      include MsRestAzure2

      # @return [ConnectionMonitorSource] Describes the source of connection
      # monitor.
      attr_accessor :source

      # @return [ConnectionMonitorDestination] Describes the destination of
      # connection monitor.
      attr_accessor :destination

      # @return [Boolean] Determines if the connection monitor will start
      # automatically once created. Default value: true .
      attr_accessor :auto_start

      # @return [Integer] Monitoring interval in seconds. Default value: 60 .
      attr_accessor :monitoring_interval_in_seconds

      # @return [Array<ConnectionMonitorEndpoint>] List of connection monitor
      # endpoints.
      attr_accessor :endpoints

      # @return [Array<ConnectionMonitorTestConfiguration>] List of connection
      # monitor test configurations.
      attr_accessor :test_configurations

      # @return [Array<ConnectionMonitorTestGroup>] List of connection monitor
      # test groups.
      attr_accessor :test_groups

      # @return [Array<ConnectionMonitorOutput>] List of connection monitor
      # outputs.
      attr_accessor :outputs

      # @return [String] Optional notes to be associated with the connection
      # monitor.
      attr_accessor :notes


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
                required: false,
                serialized_name: 'source',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectionMonitorSource'
                }
              },
              destination: {
                client_side_validation: true,
                required: false,
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
                constraints: {
                  InclusiveMaximum: 1800,
                  InclusiveMinimum: 30
                },
                type: {
                  name: 'Number'
                }
              },
              endpoints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endpoints',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConnectionMonitorEndpointElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectionMonitorEndpoint'
                      }
                  }
                }
              },
              test_configurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'testConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConnectionMonitorTestConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectionMonitorTestConfiguration'
                      }
                  }
                }
              },
              test_groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'testGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConnectionMonitorTestGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectionMonitorTestGroup'
                      }
                  }
                }
              },
              outputs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'outputs',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConnectionMonitorOutputElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectionMonitorOutput'
                      }
                  }
                }
              },
              notes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'notes',
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
