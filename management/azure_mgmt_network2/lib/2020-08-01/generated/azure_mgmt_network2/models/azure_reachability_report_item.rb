# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_08_01
  module Models
    #
    # Azure reachability report details for a given provider location.
    #
    class AzureReachabilityReportItem

      include MsRestAzure2

      # @return [String] The Internet service provider.
      attr_accessor :provider

      # @return [String] The Azure region.
      attr_accessor :azure_location

      # @return [Array<AzureReachabilityReportLatencyInfo>] List of latency
      # details for each of the time series.
      attr_accessor :latencies


      #
      # Mapper for AzureReachabilityReportItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureReachabilityReportItem',
          type: {
            name: 'Composite',
            class_name: 'AzureReachabilityReportItem',
            model_properties: {
              provider: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provider',
                type: {
                  name: 'String'
                }
              },
              azure_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureLocation',
                type: {
                  name: 'String'
                }
              },
              latencies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'latencies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureReachabilityReportLatencyInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureReachabilityReportLatencyInfo'
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
