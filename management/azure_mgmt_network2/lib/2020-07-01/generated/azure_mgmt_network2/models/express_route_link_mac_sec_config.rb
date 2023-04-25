# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_07_01
  module Models
    #
    # Definition of ExpressRouteLink Mac Security configuration.

    # ExpressRouteLink Mac Security Configuration.
    #
    class ExpressRouteLinkMacSecConfig

      include MsRestAzure2

      # @return [String] Keyvault Secret Identifier URL containing Mac security
      # CKN key.
      attr_accessor :ckn_secret_identifier

      # @return [String] Keyvault Secret Identifier URL containing Mac security
      # CAK key.
      attr_accessor :cak_secret_identifier

      # @return [ExpressRouteLinkMacSecCipher] Mac security cipher. Possible
      # values include: 'GcmAes256', 'GcmAes128', 'GcmAesXpn128',
      # 'GcmAesXpn256'
      attr_accessor :cipher

      # @return [ExpressRouteLinkMacSecSciState] Sci mode enabled/disabled.
      # Possible values include: 'Disabled', 'Enabled'
      attr_accessor :sci_state


      #
      # Mapper for ExpressRouteLinkMacSecConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteLinkMacSecConfig',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteLinkMacSecConfig',
            model_properties: {
              ckn_secret_identifier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cknSecretIdentifier',
                type: {
                  name: 'String'
                }
              },
              cak_secret_identifier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cakSecretIdentifier',
                type: {
                  name: 'String'
                }
              },
              cipher: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cipher',
                type: {
                  name: 'String'
                }
              },
              sci_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sciState',
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
