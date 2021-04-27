# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Function secrets.
    #
    class FunctionSecrets

      include MsRestAzure

      # @return [String] Secret key.
      attr_accessor :key

      # @return [String] Trigger URL.
      attr_accessor :trigger_url


      #
      # Mapper for FunctionSecrets class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FunctionSecrets',
          type: {
            name: 'Composite',
            class_name: 'FunctionSecrets',
            model_properties: {
              key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'key',
                type: {
                  name: 'String'
                }
              },
              trigger_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'trigger_url',
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