# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # Model object.
    #
    #
    class AccountEncryption

      include MsRestAzure

      # @return [AccountEncryptionKeyType] The type of key used to encrypt the
      # Account Key. Possible values include: 'SystemKey', 'CustomerKey'
      attr_accessor :type

      # @return [KeyVaultProperties] The properties of the key used to encrypt
      # the account.
      attr_accessor :key_vault_properties


      #
      # Mapper for AccountEncryption class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AccountEncryption',
          type: {
            name: 'Composite',
            class_name: 'AccountEncryption',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              key_vault_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyVaultProperties',
                type: {
                  name: 'Composite',
                  class_name: 'KeyVaultProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end