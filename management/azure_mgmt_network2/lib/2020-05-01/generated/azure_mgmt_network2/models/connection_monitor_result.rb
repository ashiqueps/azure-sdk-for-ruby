# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_05_01
  module Models
    #
    # Information about the connection monitor.
    #
    class ConnectionMonitorResult

      include MsRestAzure2

      # @return [String] Name of the connection monitor.
      attr_accessor :name

      # @return [String] ID of the connection monitor.
      attr_accessor :id

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Connection monitor type.
      attr_accessor :type

      # @return [String] Connection monitor location.
      attr_accessor :location

      # @return [Hash{String => String}] Connection monitor tags.
      attr_accessor :tags

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

      # @return [ProvisioningState] The provisioning state of the connection
      # monitor. Possible values include: 'Succeeded', 'Updating', 'Deleting',
      # 'Failed'
      attr_accessor :provisioning_state

      # @return [DateTime] The date and time when the connection monitor was
      # started.
      attr_accessor :start_time

      # @return [String] The monitoring status of the connection monitor.
      attr_accessor :monitoring_status

      # @return [ConnectionMonitorType] Type of connection monitor. Possible
      # values include: 'MultiEndpoint', 'SingleSourceDestination'
      attr_accessor :connection_monitor_type


      #
      # Mapper for ConnectionMonitorResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionMonitorResult',
          type: {
            name: 'Composite',
            class_name: 'ConnectionMonitorResult',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.source',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectionMonitorSource'
                }
              },
              destination: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.destination',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectionMonitorDestination'
                }
              },
              auto_start: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.autoStart',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              },
              monitoring_interval_in_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.monitoringIntervalInSeconds',
                default_value: 60,
                type: {
                  name: 'Number'
                }
              },
              endpoints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.endpoints',
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
                serialized_name: 'properties.testConfigurations',
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
                serialized_name: 'properties.testGroups',
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
                serialized_name: 'properties.outputs',
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
                serialized_name: 'properties.notes',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              monitoring_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.monitoringStatus',
                type: {
                  name: 'String'
                }
              },
              connection_monitor_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.connectionMonitorType',
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
