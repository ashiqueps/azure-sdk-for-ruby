# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_02_01
  module Models
    #
    # Collection of SecurityProviders.
    #
    class VirtualWanSecurityProviders

      include MsRestAzure2

      # @return [Array<VirtualWanSecurityProvider>] List of VirtualWAN security
      # providers.
      attr_accessor :supported_providers


      #
      # Mapper for VirtualWanSecurityProviders class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualWanSecurityProviders',
          type: {
            name: 'Composite',
            class_name: 'VirtualWanSecurityProviders',
            model_properties: {
              supported_providers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'supportedProviders',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualWanSecurityProviderElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualWanSecurityProvider'
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
