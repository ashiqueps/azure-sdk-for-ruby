# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_05_01
  module Models
    #
    # Post request for all the Bastion Shareable Link endpoints.
    #
    class BastionShareableLinkListRequest

      include MsRestAzure2

      # @return [Array<BastionShareableLink>] List of VM references.
      attr_accessor :vms


      #
      # Mapper for BastionShareableLinkListRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BastionShareableLinkListRequest',
          type: {
            name: 'Composite',
            class_name: 'BastionShareableLinkListRequest',
            model_properties: {
              vms: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vms',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BastionShareableLinkElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BastionShareableLink'
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
