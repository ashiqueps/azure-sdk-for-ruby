# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_07_01
  module Models
    #
    # HTTP configuration of the connectivity check.
    #
    class HTTPConfiguration

      include MsRestAzure2

      # @return [HTTPMethod] HTTP method. Possible values include: 'Get'
      attr_accessor :method

      # @return [Array<HTTPHeader>] List of HTTP headers.
      attr_accessor :headers

      # @return [Array<Integer>] Valid status codes.
      attr_accessor :valid_status_codes


      #
      # Mapper for HTTPConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HTTPConfiguration',
          type: {
            name: 'Composite',
            class_name: 'HTTPConfiguration',
            model_properties: {
              method: {
                client_side_validation: true,
                required: false,
                serialized_name: 'method',
                type: {
                  name: 'String'
                }
              },
              headers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'headers',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HTTPHeaderElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HTTPHeader'
                      }
                  }
                }
              },
              valid_status_codes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'validStatusCodes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
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
