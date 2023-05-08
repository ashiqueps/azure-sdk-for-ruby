# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_08_01
  module Models
    #
    # Intrusion detection signatures specification states.
    #
    class FirewallPolicyIntrusionDetectionSignatureSpecification

      include MsRestAzure2

      # @return [String] Signature id.
      attr_accessor :id

      # @return [FirewallPolicyIntrusionDetectionStateType] The signature
      # state. Possible values include: 'Off', 'Alert', 'Deny'
      attr_accessor :mode


      #
      # Mapper for FirewallPolicyIntrusionDetectionSignatureSpecification class
      # as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FirewallPolicyIntrusionDetectionSignatureSpecification',
          type: {
            name: 'Composite',
            class_name: 'FirewallPolicyIntrusionDetectionSignatureSpecification',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mode',
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