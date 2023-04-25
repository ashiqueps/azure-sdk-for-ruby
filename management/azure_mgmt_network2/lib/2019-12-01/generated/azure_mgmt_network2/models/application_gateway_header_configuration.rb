# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_12_01
  module Models
    #
    # Header configuration of the Actions set in Application Gateway.
    #
    class ApplicationGatewayHeaderConfiguration

      include MsRestAzure2

      # @return [String] Header name of the header configuration.
      attr_accessor :header_name

      # @return [String] Header value of the header configuration.
      attr_accessor :header_value


      #
      # Mapper for ApplicationGatewayHeaderConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayHeaderConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayHeaderConfiguration',
            model_properties: {
              header_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'headerName',
                type: {
                  name: 'String'
                }
              },
              header_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'headerValue',
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
