# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_06_01
  module Models
    #
    # The information about next hop from the specified VM.
    #
    class NextHopResult

      include MsRestAzure2

      # @return [NextHopType] Next hop type. Possible values include:
      # 'Internet', 'VirtualAppliance', 'VirtualNetworkGateway', 'VnetLocal',
      # 'HyperNetGateway', 'None'
      attr_accessor :next_hop_type

      # @return [String] Next hop IP Address.
      attr_accessor :next_hop_ip_address

      # @return [String] The resource identifier for the route table associated
      # with the route being returned. If the route being returned does not
      # correspond to any user created routes then this field will be the
      # string 'System Route'.
      attr_accessor :route_table_id


      #
      # Mapper for NextHopResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NextHopResult',
          type: {
            name: 'Composite',
            class_name: 'NextHopResult',
            model_properties: {
              next_hop_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextHopType',
                type: {
                  name: 'String'
                }
              },
              next_hop_ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextHopIpAddress',
                type: {
                  name: 'String'
                }
              },
              route_table_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'routeTableId',
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
