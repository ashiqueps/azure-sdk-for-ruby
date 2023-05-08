# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_08_01
  module Models
    #
    # The usage names.
    #
    class UsageName

      include MsRestAzure2

      # @return [String] A string describing the resource name.
      attr_accessor :value

      # @return [String] A localized string describing the resource name.
      attr_accessor :localized_value


      #
      # Mapper for UsageName class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UsageName',
          type: {
            name: 'Composite',
            class_name: 'UsageName',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              localized_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'localizedValue',
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