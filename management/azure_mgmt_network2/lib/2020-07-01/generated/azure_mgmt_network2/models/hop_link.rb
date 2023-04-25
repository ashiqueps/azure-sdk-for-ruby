# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_07_01
  module Models
    #
    # Hop link.
    #
    class HopLink

      include MsRestAzure2

      # @return [String] The ID of the next hop.
      attr_accessor :next_hop_id

      # @return [String] Link type.
      attr_accessor :link_type

      # @return [Integer] Minimum roundtrip time in milliseconds.
      attr_accessor :round_trip_time_min

      # @return [Integer] Average roundtrip time in milliseconds.
      attr_accessor :round_trip_time_avg

      # @return [Integer] Maximum roundtrip time in milliseconds.
      attr_accessor :round_trip_time_max

      # @return [Array<ConnectivityIssue>] List of issues.
      attr_accessor :issues

      # @return [Hash{String => String}] Provides additional context on links.
      attr_accessor :context

      # @return [String] Resource ID.
      attr_accessor :resource_id


      #
      # Mapper for HopLink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HopLink',
          type: {
            name: 'Composite',
            class_name: 'HopLink',
            model_properties: {
              next_hop_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nextHopId',
                type: {
                  name: 'String'
                }
              },
              link_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'linkType',
                type: {
                  name: 'String'
                }
              },
              round_trip_time_min: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.roundTripTimeMin',
                constraints: {
                  InclusiveMaximum: 4294967295,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              round_trip_time_avg: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.roundTripTimeAvg',
                constraints: {
                  InclusiveMaximum: 4294967295,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              round_trip_time_max: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.roundTripTimeMax',
                constraints: {
                  InclusiveMaximum: 4294967295,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              issues: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'issues',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConnectivityIssueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectivityIssue'
                      }
                  }
                }
              },
              context: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'context',
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
              resource_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'resourceId',
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
