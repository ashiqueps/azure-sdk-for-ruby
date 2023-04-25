# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources2::Mgmt::V2018_02_01
  module Models
    #
    # Model object.
    #
    #
    class DebugSetting

      include MsRestAzure2

      # @return [String] Specifies the type of information to log for
      # debugging. The permitted values are none, requestContent,
      # responseContent, or both requestContent and responseContent separated
      # by a comma. The default is none. When setting this value, carefully
      # consider the type of information you are passing in during deployment.
      # By logging information about the request or response, you could
      # potentially expose sensitive data that is retrieved through the
      # deployment operations.
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
