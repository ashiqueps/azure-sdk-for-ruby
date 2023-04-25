# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_07_01
  module Models
    #
    # Network security rules evaluation result.
    #
    class NetworkSecurityRulesEvaluationResult

      include MsRestAzure2

      # @return [String] Name of the network security rule.
      attr_accessor :name

      # @return [Boolean] Value indicating whether protocol is matched.
      attr_accessor :protocol_matched

      # @return [Boolean] Value indicating whether source is matched.
      attr_accessor :source_matched

      # @return [Boolean] Value indicating whether source port is matched.
      attr_accessor :source_port_matched

      # @return [Boolean] Value indicating whether destination is matched.
      attr_accessor :destination_matched

      # @return [Boolean] Value indicating whether destination port is matched.
      attr_accessor :destination_port_matched


      #
      # Mapper for NetworkSecurityRulesEvaluationResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkSecurityRulesEvaluationResult',
          type: {
            name: 'Composite',
            class_name: 'NetworkSecurityRulesEvaluationResult',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              protocol_matched: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protocolMatched',
                type: {
                  name: 'Boolean'
                }
              },
              source_matched: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceMatched',
                type: {
                  name: 'Boolean'
                }
              },
              source_port_matched: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourcePortMatched',
                type: {
                  name: 'Boolean'
                }
              },
              destination_matched: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destinationMatched',
                type: {
                  name: 'Boolean'
                }
              },
              destination_port_matched: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destinationPortMatched',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
