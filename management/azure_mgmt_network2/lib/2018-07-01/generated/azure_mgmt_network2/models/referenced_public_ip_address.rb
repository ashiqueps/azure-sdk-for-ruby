# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_07_01
  module Models
    #
    # Model object.
    #
    #
    class ReferencedPublicIpAddress

      include MsRestAzure2

      # @return [String] The PublicIPAddress Reference
      attr_accessor :id


      #
      # Mapper for ReferencedPublicIpAddress class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReferencedPublicIpAddress',
          type: {
            name: 'Composite',
            class_name: 'ReferencedPublicIpAddress',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
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
