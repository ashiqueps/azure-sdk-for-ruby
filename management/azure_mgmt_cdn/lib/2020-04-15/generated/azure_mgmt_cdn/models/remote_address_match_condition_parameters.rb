# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_04_15
  module Models
    #
    # Defines the parameters for RemoteAddress match conditions
    #
    class RemoteAddressMatchConditionParameters

      include MsRestAzure

      # @return [String] . Default value:
      # '#Microsoft.Azure.Cdn.Models.DeliveryRuleRemoteAddressConditionParameters'
      # .
      attr_accessor :odatatype

      # @return [RemoteAddressOperator] Describes operator to be matched.
      # Possible values include: 'Any', 'IPMatch', 'GeoMatch'
      attr_accessor :operator

      # @return [Boolean] Describes if this is negate condition or not
      attr_accessor :negate_condition

      # @return [Array<String>] Match values to match against. The operator
      # will apply to each value in here with OR semantics. If any of them
      # match the variable with the given operator this match condition is
      # considered a match.
      attr_accessor :match_values

      # @return [Array<Transform>] List of transforms
      attr_accessor :transforms


      #
      # Mapper for RemoteAddressMatchConditionParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RemoteAddressMatchConditionParameters',
          type: {
            name: 'Composite',
            class_name: 'RemoteAddressMatchConditionParameters',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: '@odata\\.type',
                default_value: '#Microsoft.Azure.Cdn.Models.DeliveryRuleRemoteAddressConditionParameters',
                type: {
                  name: 'String'
                }
              },
              operator: {
                client_side_validation: true,
                required: true,
                serialized_name: 'operator',
                type: {
                  name: 'String'
                }
              },
              negate_condition: {
                client_side_validation: true,
                required: false,
                serialized_name: 'negateCondition',
                type: {
                  name: 'Boolean'
                }
              },
              match_values: {
                client_side_validation: true,
                required: false,
                serialized_name: 'matchValues',
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
              transforms: {
                client_side_validation: true,
                required: false,
                serialized_name: 'transforms',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TransformElementType',
                      type: {
                        name: 'String'
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