# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2015_05_01_preview
  module Models
    #
    # The routes table associated with the ExpressRouteCircuit
    #
    class ExpressRouteCircuitRoutesTable

      include MsRestAzure2

      # @return [String] Gets AddressPrefix.
      attr_accessor :address_prefix

      # @return [RouteNextHopType] Gets NextHopType. Possible values include:
      # 'VirtualNetworkGateway', 'VnetLocal', 'Internet', 'VirtualAppliance',
      # 'None'
      attr_accessor :next_hop_type

      # @return [String] Gets NextHopIP.
      attr_accessor :next_hop_ip

      # @return [String] Gets AsPath.
      attr_accessor :as_path


      #
      # Mapper for ExpressRouteCircuitRoutesTable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteCircuitRoutesTable',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitRoutesTable',
            model_properties: {
              address_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'addressPrefix',
                type: {
                  name: 'String'
                }
              },
              next_hop_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'nextHopType',
                type: {
                  name: 'String'
                }
              },
              next_hop_ip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextHopIP',
                type: {
                  name: 'String'
                }
              },
              as_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'asPath',
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
