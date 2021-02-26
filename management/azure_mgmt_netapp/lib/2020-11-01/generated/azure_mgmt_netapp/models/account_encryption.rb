# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2020_11_01
  module Models
    #
    # Encryption settings
    #
    class AccountEncryption

      include MsRestAzure

      # @return [KeySource] Encryption Key Source. Possible values are:
      # 'Microsoft.NetApp'. Possible values include: 'Microsoft.NetApp'
      attr_accessor :key_source


      #
      # Mapper for AccountEncryption class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'accountEncryption',
          type: {
            name: 'Composite',
            class_name: 'AccountEncryption',
            model_properties: {
              key_source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keySource',
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
