# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources2::Mgmt::V2019_10_01
  module Models
    #
    # Entity representing the reference to the deployment parameters.
    #
    class ParametersLink

      include MsRestAzure2

      # @return [String] The URI of the parameters file.
      attr_accessor :uri

      # @return [String] If included, must match the ContentVersion in the
      # template.
      attr_accessor :content_version


      #
      # Mapper for ParametersLink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ParametersLink',
          type: {
            name: 'Composite',
            class_name: 'ParametersLink',
            model_properties: {
              uri: {
                client_side_validation: true,
                required: true,
                serialized_name: 'uri',
                type: {
                  name: 'String'
                }
              },
              content_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contentVersion',
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
