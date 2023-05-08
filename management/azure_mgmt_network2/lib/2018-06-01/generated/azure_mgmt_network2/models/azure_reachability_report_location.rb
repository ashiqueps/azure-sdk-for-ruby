# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_06_01
  module Models
    #
    # Parameters that define a geographic location.
    #
    class AzureReachabilityReportLocation

      include MsRestAzure2

      # @return [String] The name of the country.
      attr_accessor :country

      # @return [String] The name of the state.
      attr_accessor :state

      # @return [String] The name of the city or town.
      attr_accessor :city


      #
      # Mapper for AzureReachabilityReportLocation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureReachabilityReportLocation',
          type: {
            name: 'Composite',
            class_name: 'AzureReachabilityReportLocation',
            model_properties: {
              country: {
                client_side_validation: true,
                required: true,
                serialized_name: 'country',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              city: {
                client_side_validation: true,
                required: false,
                serialized_name: 'city',
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