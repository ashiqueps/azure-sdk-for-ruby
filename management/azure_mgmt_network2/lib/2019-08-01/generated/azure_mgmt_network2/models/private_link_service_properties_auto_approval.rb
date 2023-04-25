# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_08_01
  module Models
    #
    # The auto-approval list of the private link service.
    #
    class PrivateLinkServicePropertiesAutoApproval < ResourceSet

      include MsRestAzure2


      #
      # Mapper for PrivateLinkServicePropertiesAutoApproval class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateLinkServiceProperties_autoApproval',
          type: {
            name: 'Composite',
            class_name: 'PrivateLinkServicePropertiesAutoApproval',
            model_properties: {
              subscriptions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subscriptions',
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
              }
            }
          }
        }
      end
    end
  end
end
