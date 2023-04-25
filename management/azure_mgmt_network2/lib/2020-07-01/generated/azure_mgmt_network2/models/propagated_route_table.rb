# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_07_01
  module Models
    #
    # The list of RouteTables to advertise the routes to.
    #
    class PropagatedRouteTable

      include MsRestAzure2

      # @return [Array<String>] The list of labels.
      attr_accessor :labels

      # @return [Array<SubResource>] The list of resource ids of all the
      # RouteTables.
      attr_accessor :ids


      #
      # Mapper for PropagatedRouteTable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PropagatedRouteTable',
          type: {
            name: 'Composite',
            class_name: 'PropagatedRouteTable',
            model_properties: {
              labels: {
                client_side_validation: true,
                required: false,
                serialized_name: 'labels',
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
              ids: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ids',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
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
