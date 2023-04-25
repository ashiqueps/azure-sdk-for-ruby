# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_05_01
  module Models
    #
    # Azure reachability report details.
    #
    class AzureReachabilityReport

      include MsRestAzure2

      # @return [String] The aggregation level of Azure reachability report.
      # Can be Country, State or City.
      attr_accessor :aggregation_level

      # @return [AzureReachabilityReportLocation] Parameters that define a
      # geographic location.
      attr_accessor :provider_location

      # @return [Array<AzureReachabilityReportItem>] List of Azure reachability
      # report items.
      attr_accessor :reachability_report


      #
      # Mapper for AzureReachabilityReport class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureReachabilityReport',
          type: {
            name: 'Composite',
            class_name: 'AzureReachabilityReport',
            model_properties: {
              aggregation_level: {
                client_side_validation: true,
                required: true,
                serialized_name: 'aggregationLevel',
                type: {
                  name: 'String'
                }
              },
              provider_location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'providerLocation',
                type: {
                  name: 'Composite',
                  class_name: 'AzureReachabilityReportLocation'
                }
              },
              reachability_report: {
                client_side_validation: true,
                required: true,
                serialized_name: 'reachabilityReport',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureReachabilityReportItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureReachabilityReportItem'
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
