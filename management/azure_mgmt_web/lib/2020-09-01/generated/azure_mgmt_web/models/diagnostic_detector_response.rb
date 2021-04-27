# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Class representing Response from Diagnostic Detectors
    #
    class DiagnosticDetectorResponse < ProxyOnlyResource

      include MsRestAzure

      # @return [DateTime] Start time of the period
      attr_accessor :start_time

      # @return [DateTime] End time of the period
      attr_accessor :end_time

      # @return [Boolean] Flag representing Issue was detected.
      attr_accessor :issue_detected

      # @return [DetectorDefinition] Detector's definition
      attr_accessor :detector_definition

      # @return [Array<DiagnosticMetricSet>] Metrics provided by the detector
      attr_accessor :metrics

      # @return [Array<DetectorAbnormalTimePeriod>] List of Correlated events
      # found by the detector
      attr_accessor :abnormal_time_periods

      # @return [Array<Array<NameValuePair>>] Additional Data that detector
      # wants to send.
      attr_accessor :data

      # @return [ResponseMetaData] Meta Data
      attr_accessor :response_meta_data


      #
      # Mapper for DiagnosticDetectorResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DiagnosticDetectorResponse',
          type: {
            name: 'Composite',
            class_name: 'DiagnosticDetectorResponse',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
              system_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'systemData',
                type: {
                  name: 'Composite',
                  class_name: 'SystemData'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.endTime',
                type: {
                  name: 'DateTime'
                }
              },
              issue_detected: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.issueDetected',
                type: {
                  name: 'Boolean'
                }
              },
              detector_definition: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.detectorDefinition',
                type: {
                  name: 'Composite',
                  class_name: 'DetectorDefinition'
                }
              },
              metrics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.metrics',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DiagnosticMetricSetElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DiagnosticMetricSet'
                      }
                  }
                }
              },
              abnormal_time_periods: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.abnormalTimePeriods',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DetectorAbnormalTimePeriodElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DetectorAbnormalTimePeriod'
                      }
                  }
                }
              },
              data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.data',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArrayElementType',
                      type: {
                        name: 'Sequence',
                        element: {
                            client_side_validation: true,
                            required: false,
                            serialized_name: 'NameValuePairElementType',
                            type: {
                              name: 'Composite',
                              class_name: 'NameValuePair'
                            }
                        }
                      }
                  }
                }
              },
              response_meta_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.responseMetaData',
                type: {
                  name: 'Composite',
                  class_name: 'ResponseMetaData'
                }
              }
            }
          }
        }
      end
    end
  end
end