# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Information about setup or main entry point of a code package deployed on
    # a Service Fabric node.
    #
    class CodePackageEntryPoint

      include MsRestAzure

      # @return [String] The location of entry point executable on the node.
      attr_accessor :entry_point_location

      # @return [String] The process ID of the entry point.
      attr_accessor :process_id

      # @return [String] The user name under which entry point executable is
      # run on the node.
      attr_accessor :run_as_user_name

      # @return [CodePackageEntryPointStatistics] Statistics about setup or
      # main entry point  of a code package deployed on a Service Fabric node.
      attr_accessor :code_package_entry_point_statistics

      # @return [EntryPointStatus] Specifies the status of the code package
      # entry point deployed on a Service Fabric node. Possible values include:
      # 'Invalid', 'Pending', 'Starting', 'Started', 'Stopping', 'Stopped'
      attr_accessor :status

      # @return [DateTime] The time (in UTC) when the entry point executable
      # will be run next.
      attr_accessor :next_activation_time

      # @return [String] The instance ID for current running entry point. For a
      # code package setup entry point (if specified) runs first and after it
      # finishes main entry point is started. Each time entry point executable
      # is run, its instance id will change.
      attr_accessor :instance_id


      #
      # Mapper for CodePackageEntryPoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CodePackageEntryPoint',
          type: {
            name: 'Composite',
            class_name: 'CodePackageEntryPoint',
            model_properties: {
              entry_point_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'EntryPointLocation',
                type: {
                  name: 'String'
                }
              },
              process_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ProcessId',
                type: {
                  name: 'String'
                }
              },
              run_as_user_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'RunAsUserName',
                type: {
                  name: 'String'
                }
              },
              code_package_entry_point_statistics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CodePackageEntryPointStatistics',
                type: {
                  name: 'Composite',
                  class_name: 'CodePackageEntryPointStatistics'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Status',
                type: {
                  name: 'String'
                }
              },
              next_activation_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NextActivationTime',
                type: {
                  name: 'DateTime'
                }
              },
              instance_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'InstanceId',
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