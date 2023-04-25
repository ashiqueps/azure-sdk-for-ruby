# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_07_01
  module Models
    #
    # Common error representation.
    #
    class Error

      include MsRestAzure2

      # @return [String] Error code.
      attr_accessor :code

      # @return [String] Error message.
      attr_accessor :message

      # @return [String] Error target.
      attr_accessor :target

      # @return [Array<ErrorDetails>] Error details.
      attr_accessor :details

      # @return [String] Inner error message.
      attr_accessor :inner_error


      #
      # Mapper for Error class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Error',
          type: {
            name: 'Composite',
            class_name: 'Error',
            model_properties: {
              code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              target: {
                client_side_validation: true,
                required: false,
                serialized_name: 'target',
                type: {
                  name: 'String'
                }
              },
              details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'details',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ErrorDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ErrorDetails'
                      }
                  }
                }
              },
              inner_error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'innerError',
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
