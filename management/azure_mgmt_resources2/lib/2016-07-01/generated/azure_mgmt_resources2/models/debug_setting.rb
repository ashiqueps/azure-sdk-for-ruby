# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources2::Mgmt::V2016_07_01
  module Models
    #
    # Model object.
    #
    #
    class DebugSetting

      include MsRestAzure2

      # @return [String] The debug detail level.
      attr_accessor :detail_level


      #
      # Mapper for DebugSetting class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DebugSetting',
          type: {
            name: 'Composite',
            class_name: 'DebugSetting',
            model_properties: {
              detail_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'detailLevel',
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
