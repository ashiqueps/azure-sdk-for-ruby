# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_08_01
  module Models
    #
    # Geographic and time constraints for Azure reachability report.
    #
    class AzureReachabilityReportParameters

      include MsRestAzure2

      # @return [AzureReachabilityReportLocation]
      attr_accessor :provider_location

      # @return [Array<String>] List of Internet service providers.
      attr_accessor :providers

      # @return [Array<String>] Optional Azure regions to scope the query to.
      attr_accessor :azure_locations

      # @return [DateTime] The start time for the Azure reachability report.
      attr_accessor :start_time

      # @return [DateTime] The end time for the Azure reachability report.
      attr_accessor :end_time


      #
      # Mapper for AzureReachabilityReportParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureReachabilityReportParameters',
          type: {
            name: 'Composite',
            class_name: 'AzureReachabilityReportParameters',
            model_properties: {
              provider_location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'providerLocation',
                type: {
                  name: 'Composite',
                  class_name: 'AzureReachabilityReportLocation'
                }
              },
              providers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'providers',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              azure_locations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureLocations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              start_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
