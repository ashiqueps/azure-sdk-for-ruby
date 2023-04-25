# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_08_01
  module Models
    #
    # List of virtual router peer routes.
    #
    class PeerRouteList

      include MsRestAzure2

      # @return [Array<PeerRoute>] List of peer routes.
      attr_accessor :value


      #
      # Mapper for PeerRouteList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PeerRouteList',
          type: {
            name: 'Composite',
            class_name: 'PeerRouteList',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PeerRouteElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PeerRoute'
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
