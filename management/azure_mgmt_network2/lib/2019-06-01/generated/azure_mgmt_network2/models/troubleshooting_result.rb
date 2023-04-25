# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_06_01
  module Models
    #
    # Troubleshooting information gained from specified resource.
    #
    class TroubleshootingResult

      include MsRestAzure2

      # @return [DateTime] The start time of the troubleshooting.
      attr_accessor :start_time

      # @return [DateTime] The end time of the troubleshooting.
      attr_accessor :end_time

      # @return [String] The result code of the troubleshooting.
      attr_accessor :code

      # @return [Array<TroubleshootingDetails>] Information from
      # troubleshooting.
      attr_accessor :results


      #
      # Mapper for TroubleshootingResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TroubleshootingResult',
          type: {
            name: 'Composite',
            class_name: 'TroubleshootingResult',
            model_properties: {
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              results: {
                client_side_validation: true,
                required: false,
                serialized_name: 'results',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TroubleshootingDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TroubleshootingDetails'
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
