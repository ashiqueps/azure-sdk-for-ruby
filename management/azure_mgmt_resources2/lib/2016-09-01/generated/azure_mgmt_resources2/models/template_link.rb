# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources2::Mgmt::V2016_09_01
  module Models
    #
    # Entity representing the reference to the template.
    #
    class TemplateLink

      include MsRestAzure2

      # @return [String] The URI of the template to deploy.
      attr_accessor :uri

      # @return [String] If included, must match the ContentVersion in the
      # template.
      attr_accessor :content_version


      #
      # Mapper for TemplateLink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TemplateLink',
          type: {
            name: 'Composite',
            class_name: 'TemplateLink',
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
