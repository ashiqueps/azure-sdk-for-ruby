# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_03_01
  module Models
    #
    # VirtualHub route.
    #
    class VirtualHubRoute

      include MsRestAzure2

      # @return [Array<String>] List of all addressPrefixes.
      attr_accessor :address_prefixes

      # @return [String] NextHop ip address.
      attr_accessor :next_hop_ip_address


      #
      # Mapper for VirtualHubRoute class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualHubRoute',
          type: {
            name: 'Composite',
            class_name: 'VirtualHubRoute',
            model_properties: {
              address_prefixes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'addressPrefixes',
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
              next_hop_ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextHopIpAddress',
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
