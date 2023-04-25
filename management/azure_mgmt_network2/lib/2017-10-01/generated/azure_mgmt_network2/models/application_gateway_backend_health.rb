# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2017_10_01
  module Models
    #
    # List of ApplicationGatewayBackendHealthPool resources.
    #
    class ApplicationGatewayBackendHealth

      include MsRestAzure2

      # @return [Array<ApplicationGatewayBackendHealthPool>]
      attr_accessor :backend_address_pools


      #
      # Mapper for ApplicationGatewayBackendHealth class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayBackendHealth',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayBackendHealth',
            model_properties: {
              backend_address_pools: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backendAddressPools',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayBackendHealthPoolElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayBackendHealthPool'
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
