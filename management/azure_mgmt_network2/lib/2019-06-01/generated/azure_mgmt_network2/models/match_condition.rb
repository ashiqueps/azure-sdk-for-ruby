# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_06_01
  module Models
    #
    # Define match conditions.
    #
    class MatchCondition

      include MsRestAzure2

      # @return [Array<MatchVariable>] List of match variables.
      attr_accessor :match_variables

      # @return [WebApplicationFirewallOperator] Describes operator to be
      # matched. Possible values include: 'IPMatch', 'Equal', 'Contains',
      # 'LessThan', 'GreaterThan', 'LessThanOrEqual', 'GreaterThanOrEqual',
      # 'BeginsWith', 'EndsWith', 'Regex'
      attr_accessor :operator

      # @return [Boolean] Describes if this is negate condition or not.
      attr_accessor :negation_conditon

      # @return [Array<String>] Match value.
      attr_accessor :match_values

      # @return [Array<WebApplicationFirewallTransform>] List of transforms.
      attr_accessor :transforms


      #
      # Mapper for MatchCondition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MatchCondition',
          type: {
            name: 'Composite',
            class_name: 'MatchCondition',
            model_properties: {
              match_variables: {
                client_side_validation: true,
                required: true,
                serialized_name: 'matchVariables',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MatchVariableElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MatchVariable'
                      }
                  }
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
              negation_conditon: {
                client_side_validation: true,
                required: false,
                serialized_name: 'negationConditon',
                type: {
                  name: 'Boolean'
                }
              },
              match_values: {
                client_side_validation: true,
                required: true,
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
                      serialized_name: 'WebApplicationFirewallTransformElementType',
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
