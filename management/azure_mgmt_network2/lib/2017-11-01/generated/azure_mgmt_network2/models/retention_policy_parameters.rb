# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2017_11_01
  module Models
    #
    # Parameters that define the retention policy for flow log.
    #
    class RetentionPolicyParameters

      include MsRestAzure2

      # @return [Integer] Number of days to retain flow log records. Default
      # value: 0 .
      attr_accessor :days

      # @return [Boolean] Flag to enable/disable retention. Default value:
      # false .
      attr_accessor :enabled


      #
      # Mapper for RetentionPolicyParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RetentionPolicyParameters',
          type: {
            name: 'Composite',
            class_name: 'RetentionPolicyParameters',
            model_properties: {
              days: {
                client_side_validation: true,
                required: false,
                serialized_name: 'days',
                default_value: 0,
                type: {
                  name: 'Number'
                }
              },
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabled',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
