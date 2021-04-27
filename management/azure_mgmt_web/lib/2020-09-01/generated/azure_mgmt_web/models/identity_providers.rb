# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Model object.
    #
    #
    class IdentityProviders < ProxyOnlyResource

      include MsRestAzure

      # @return [AzureActiveDirectory]
      attr_accessor :azure_active_directory

      # @return [Facebook]
      attr_accessor :facebook

      # @return [GitHub]
      attr_accessor :git_hub

      # @return [Google]
      attr_accessor :google

      # @return [Twitter]
      attr_accessor :twitter

      # @return [Hash{String => CustomOpenIdConnectProvider}]
      attr_accessor :custom_open_id_connect_providers


      #
      # Mapper for IdentityProviders class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IdentityProviders',
          type: {
            name: 'Composite',
            class_name: 'IdentityProviders',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              system_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'systemData',
                type: {
                  name: 'Composite',
                  class_name: 'SystemData'
                }
              },
              azure_active_directory: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.azureActiveDirectory',
                type: {
                  name: 'Composite',
                  class_name: 'AzureActiveDirectory'
                }
              },
              facebook: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.facebook',
                type: {
                  name: 'Composite',
                  class_name: 'Facebook'
                }
              },
              git_hub: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.gitHub',
                type: {
                  name: 'Composite',
                  class_name: 'GitHub'
                }
              },
              google: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.google',
                type: {
                  name: 'Composite',
                  class_name: 'Google'
                }
              },
              twitter: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.twitter',
                type: {
                  name: 'Composite',
                  class_name: 'Twitter'
                }
              },
              custom_open_id_connect_providers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.customOpenIdConnectProviders',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CustomOpenIdConnectProviderElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CustomOpenIdConnectProvider'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end