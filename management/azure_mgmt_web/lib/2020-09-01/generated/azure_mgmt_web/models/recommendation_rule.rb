# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Represents a recommendation rule that the recommendation engine can
    # perform.
    #
    class RecommendationRule < ProxyOnlyResource

      include MsRestAzure

      # @return [String] Unique name of the rule.
      attr_accessor :recommendation_name

      # @return [String] UI friendly name of the rule.
      attr_accessor :display_name

      # @return [String] Localized name of the rule (Good for UI).
      attr_accessor :message

      # @return Recommendation ID of an associated recommendation object tied
      # to the rule, if exists.
      # If such an object doesn't exist, it is set to null.
      attr_accessor :recommendation_id

      # @return [String] Localized detailed description of the rule.
      attr_accessor :description

      # @return [String] Name of action that is recommended by this rule in
      # string.
      attr_accessor :action_name

      # @return [NotificationLevel] Level of impact indicating how critical
      # this rule is. Possible values include: 'Critical', 'Warning',
      # 'Information', 'NonUrgentSuggestion'
      attr_accessor :level

      # @return [Channels] List of available channels that this rule applies.
      # Possible values include: 'Notification', 'Api', 'Email', 'Webhook',
      # 'All'
      attr_accessor :channels

      # @return [Array<String>] The list of category tags that this
      # recommendation rule belongs to.
      attr_accessor :category_tags

      # @return [Boolean] True if this is associated with a dynamically added
      # rule
      attr_accessor :is_dynamic

      # @return [String] Extension name of the portal if exists. Applicable to
      # dynamic rule only.
      attr_accessor :extension_name

      # @return [String] Deep link to a blade on the portal. Applicable to
      # dynamic rule only.
      attr_accessor :blade_name

      # @return [String] Forward link to an external document associated with
      # the rule. Applicable to dynamic rule only.
      attr_accessor :forward_link


      #
      # Mapper for RecommendationRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecommendationRule',
          type: {
            name: 'Composite',
            class_name: 'RecommendationRule',
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
              recommendation_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.recommendationName',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.message',
                type: {
                  name: 'String'
                }
              },
              recommendation_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.recommendationId',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              action_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.actionName',
                type: {
                  name: 'String'
                }
              },
              level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.level',
                type: {
                  name: 'Enum',
                  module: 'NotificationLevel'
                }
              },
              channels: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.channels',
                type: {
                  name: 'Enum',
                  module: 'Channels'
                }
              },
              category_tags: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.categoryTags',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              is_dynamic: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isDynamic',
                type: {
                  name: 'Boolean'
                }
              },
              extension_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.extensionName',
                type: {
                  name: 'String'
                }
              },
              blade_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.bladeName',
                type: {
                  name: 'String'
                }
              },
              forward_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.forwardLink',
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