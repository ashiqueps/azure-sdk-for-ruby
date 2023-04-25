# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_06_01
  module Models
    #
    # The session state detail for a target.
    #
    class BastionSessionState

      include MsRestAzure2

      # @return [String] A unique id for the session.
      attr_accessor :session_id

      # @return [String] Used for extra information.
      attr_accessor :message

      # @return [String] The state of the session.
      # Disconnected/Failed/NotFound.
      attr_accessor :state


      #
      # Mapper for BastionSessionState class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BastionSessionState',
          type: {
            name: 'Composite',
            class_name: 'BastionSessionState',
            model_properties: {
              session_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sessionId',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'state',
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
