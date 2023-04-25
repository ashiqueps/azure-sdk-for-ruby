# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_04_01
  module Models
    #
    # Information gained from troubleshooting of specified resource.
    #
    class TroubleshootingDetails

      include MsRestAzure2

      # @return [String] The id of the get troubleshoot operation.
      attr_accessor :id

      # @return [String] Reason type of failure.
      attr_accessor :reason_type

      # @return [String] A summary of troubleshooting.
      attr_accessor :summary

      # @return [String] Details on troubleshooting results.
      attr_accessor :detail

      # @return [Array<TroubleshootingRecommendedActions>] List of recommended
      # actions.
      attr_accessor :recommended_actions


      #
      # Mapper for TroubleshootingDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TroubleshootingDetails',
          type: {
            name: 'Composite',
            class_name: 'TroubleshootingDetails',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              reason_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'reasonType',
                type: {
                  name: 'String'
                }
              },
              summary: {
                client_side_validation: true,
                required: false,
                serialized_name: 'summary',
                type: {
                  name: 'String'
                }
              },
              detail: {
                client_side_validation: true,
                required: false,
                serialized_name: 'detail',
                type: {
                  name: 'String'
                }
              },
              recommended_actions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recommendedActions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TroubleshootingRecommendedActionsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TroubleshootingRecommendedActions'
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
