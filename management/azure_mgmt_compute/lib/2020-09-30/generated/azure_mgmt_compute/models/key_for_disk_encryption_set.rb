# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_09_30
  module Models
    #
    # Key Vault Key Url to be used for server side encryption of Managed Disks
    # and Snapshots
    #
    class KeyForDiskEncryptionSet

      include MsRestAzure

      # @return [SourceVault] Resource id of the KeyVault containing the key or
      # secret. This property is optional and cannot be used if the KeyVault
      # subscription is not the same as the Disk Encryption Set subscription.
      attr_accessor :source_vault

      # @return [String] Fully versioned Key Url pointing to a key in KeyVault
      attr_accessor :key_url


      #
      # Mapper for KeyForDiskEncryptionSet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyForDiskEncryptionSet',
          type: {
            name: 'Composite',
            class_name: 'KeyForDiskEncryptionSet',
            model_properties: {
              source_vault: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceVault',
                type: {
                  name: 'Composite',
                  class_name: 'SourceVault'
                }
              },
              key_url: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyUrl',
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