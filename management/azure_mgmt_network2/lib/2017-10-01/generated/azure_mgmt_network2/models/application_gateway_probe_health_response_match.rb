# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2017_10_01
  module Models
    #
    # Application gateway probe health response match
    #
    class ApplicationGatewayProbeHealthResponseMatch

      include MsRestAzure2

      # @return [String] Body that must be contained in the health response.
      # Default value is empty.
      attr_accessor :body

      # @return [Array<String>] Allowed ranges of healthy status codes. Default
      # range of healthy status codes is 200-399.
      attr_accessor :status_codes


      #
      # Mapper for ApplicationGatewayProbeHealthResponseMatch class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayProbeHealthResponseMatch',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayProbeHealthResponseMatch',
            model_properties: {
              body: {
                client_side_validation: true,
                required: false,
                serialized_name: 'body',
                type: {
                  name: 'String'
                }
              },
              status_codes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'statusCodes',
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
              }
            }
          }
        }
      end
    end
  end
end
