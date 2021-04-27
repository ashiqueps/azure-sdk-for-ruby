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
    class HttpSettings < ProxyOnlyResource

      include MsRestAzure

      # @return [Boolean]
      attr_accessor :require_https

      # @return [HttpSettingsRoutes]
      attr_accessor :routes

      # @return [ForwardProxy]
      attr_accessor :forward_proxy


      #
      # Mapper for HttpSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HttpSettings',
          type: {
            name: 'Composite',
            class_name: 'HttpSettings',
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
              require_https: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.requireHttps',
                type: {
                  name: 'Boolean'
                }
              },
              routes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.routes',
                type: {
                  name: 'Composite',
                  class_name: 'HttpSettingsRoutes'
                }
              },
              forward_proxy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.forwardProxy',
                type: {
                  name: 'Composite',
                  class_name: 'ForwardProxy'
                }
              }
            }
          }
        }
      end
    end
  end
end