# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2020_11_01
  module Models
    #
    # Authorize request
    #
    class AuthorizeRequest

      include MsRestAzure

      # @return [String] Resource id of the remote volume
      attr_accessor :remote_volume_resource_id


      #
      # Mapper for AuthorizeRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'authorizeRequest',
          type: {
            name: 'Composite',
            class_name: 'AuthorizeRequest',
            model_properties: {
              remote_volume_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'remoteVolumeResourceId',
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
