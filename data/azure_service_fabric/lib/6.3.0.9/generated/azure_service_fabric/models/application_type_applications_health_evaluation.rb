# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Represents health evaluation for applications of a particular application
    # type. The application type applications evaluation can be returned when
    # cluster health evaluation returns unhealthy aggregated health state,
    # either Error or Warning. It contains health evaluations for each
    # unhealthy application of the included application type that impacted
    # current aggregated health state.
    #
    class ApplicationTypeApplicationsHealthEvaluation < HealthEvaluation

      include MsRestAzure


      def initialize
        @Kind = "ApplicationTypeApplications"
      end

      attr_accessor :Kind

      # @return [String] The application type name as defined in the
      # application manifest.
      attr_accessor :application_type_name

      # @return [Integer] Maximum allowed percentage of unhealthy applications
      # for the application type, specified as an entry in
      # ApplicationTypeHealthPolicyMap.
      attr_accessor :max_percent_unhealthy_applications

      # @return [Integer] Total number of applications of the application type
      # found in the health store.
      attr_accessor :total_count

      # @return [Array<HealthEvaluationWrapper>] List of unhealthy evaluations
      # that led to the aggregated health state. Includes all the unhealthy
      # ApplicationHealthEvaluation of this application type that impacted the
      # aggregated health.
      attr_accessor :unhealthy_evaluations


      #
      # Mapper for ApplicationTypeApplicationsHealthEvaluation class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationTypeApplications',
          type: {
            name: 'Composite',
            class_name: 'ApplicationTypeApplicationsHealthEvaluation',
            model_properties: {
              aggregated_health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'AggregatedHealthState',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Description',
                type: {
                  name: 'String'
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              application_type_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ApplicationTypeName',
                type: {
                  name: 'String'
                }
              },
              max_percent_unhealthy_applications: {
                client_side_validation: true,
                required: false,
                serialized_name: 'MaxPercentUnhealthyApplications',
                type: {
                  name: 'Number'
                }
              },
              total_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'TotalCount',
                type: {
                  name: 'Number'
                }
              },
              unhealthy_evaluations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UnhealthyEvaluations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HealthEvaluationWrapperElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthEvaluationWrapper'
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