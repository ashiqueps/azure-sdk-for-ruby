# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2016_06_01
  module Models
    #
    # Contains ServiceProviderProperties in an ExpressRouteCircuit
    #
    class ExpressRouteCircuitServiceProviderProperties

      include MsRestAzure2

      # @return [String] Gets or sets serviceProviderName.
      attr_accessor :service_provider_name

      # @return [String] Gets or sets peering location.
      attr_accessor :peering_location

      # @return [Integer] Gets or sets BandwidthInMbps.
      attr_accessor :bandwidth_in_mbps


      #
      # Mapper for ExpressRouteCircuitServiceProviderProperties class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteCircuitServiceProviderProperties',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitServiceProviderProperties',
            model_properties: {
              service_provider_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceProviderName',
                type: {
                  name: 'String'
                }
              },
              peering_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'peeringLocation',
                type: {
                  name: 'String'
                }
              },
              bandwidth_in_mbps: {
                client_side_validation: true,
                required: false,
                serialized_name: 'bandwidthInMbps',
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
