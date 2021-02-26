# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2020_11_01
  module Models
    #
    # Weekly Schedule properties, make a snapshot every week at a specific day
    # or days
    #
    class WeeklySchedule

      include MsRestAzure

      # @return [Integer] Weekly snapshot count to keep
      attr_accessor :snapshots_to_keep

      # @return [String] Indicates which weekdays snapshot should be taken,
      # accepts a comma separated list of week day names in english
      attr_accessor :day

      # @return [Integer] Indicates which hour in UTC timezone a snapshot
      # should be taken
      attr_accessor :hour

      # @return [Integer] Indicates which minute snapshot should be taken
      attr_accessor :minute

      # @return [Integer] Resource size in bytes, current storage usage for the
      # volume in bytes
      attr_accessor :used_bytes


      #
      # Mapper for WeeklySchedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'weeklySchedule',
          type: {
            name: 'Composite',
            class_name: 'WeeklySchedule',
            model_properties: {
              snapshots_to_keep: {
                client_side_validation: true,
                required: false,
                serialized_name: 'snapshotsToKeep',
                type: {
                  name: 'Number'
                }
              },
              day: {
                client_side_validation: true,
                required: false,
                serialized_name: 'day',
                type: {
                  name: 'String'
                }
              },
              hour: {
                client_side_validation: true,
                required: false,
                serialized_name: 'hour',
                type: {
                  name: 'Number'
                }
              },
              minute: {
                client_side_validation: true,
                required: false,
                serialized_name: 'minute',
                type: {
                  name: 'Number'
                }
              },
              used_bytes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'usedBytes',
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
