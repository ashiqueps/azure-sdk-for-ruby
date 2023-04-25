# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_09_01
  module Models
    #
    # Bgp Communities sent over ExpressRoute with each route corresponding to a
    # prefix in this VNET.
    #
    class VirtualNetworkBgpCommunities

      include MsRestAzure2

      # @return [String] The BGP community associated with the virtual network.
      attr_accessor :virtual_network_community

      # @return [String] The BGP community associated with the region of the
      # virtual network.
      attr_accessor :regional_community


      #
      # Mapper for VirtualNetworkBgpCommunities class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualNetworkBgpCommunities',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkBgpCommunities',
            model_properties: {
              virtual_network_community: {
                client_side_validation: true,
                required: true,
                serialized_name: 'virtualNetworkCommunity',
                type: {
                  name: 'String'
                }
              },
              regional_community: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'regionalCommunity',
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
