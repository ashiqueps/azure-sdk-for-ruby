# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_06_01
  module Models
    #
    # Result of on demand test probe.
    #
    class ApplicationGatewayBackendHealthOnDemand

      include MsRestAzure2

      # @return [ApplicationGatewayBackendAddressPool] Reference of an
      # ApplicationGatewayBackendAddressPool resource.
      attr_accessor :backend_address_pool

      # @return [ApplicationGatewayBackendHealthHttpSettings] Application
      # gateway BackendHealthHttp settings.
      attr_accessor :backend_health_http_settings


      #
      # Mapper for ApplicationGatewayBackendHealthOnDemand class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayBackendHealthOnDemand',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayBackendHealthOnDemand',
            model_properties: {
              backend_address_pool: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backendAddressPool',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicationGatewayBackendAddressPool'
                }
              },
              backend_health_http_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backendHealthHttpSettings',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicationGatewayBackendHealthHttpSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end
