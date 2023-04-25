# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_02_01
  module Models
    #
    # Parameters that define the flow log format.
    #
    class FlowLogFormatParameters

      include MsRestAzure2

      # @return [FlowLogFormatType] The file type of flow log. Possible values
      # include: 'JSON'
      attr_accessor :type

      # @return [Integer] The version (revision) of the flow log. Default
      # value: 0 .
      attr_accessor :version


      #
      # Mapper for FlowLogFormatParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FlowLogFormatParameters',
          type: {
            name: 'Composite',
            class_name: 'FlowLogFormatParameters',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'version',
                default_value: 0,
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
