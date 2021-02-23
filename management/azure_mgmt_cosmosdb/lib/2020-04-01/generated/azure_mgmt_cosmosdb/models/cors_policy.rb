# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_04_01
  module Models
    #
    # The CORS policy for the Cosmos DB database account.
    #
    class CorsPolicy

      include MsRestAzure

      # @return [String] The origin domains that are permitted to make a
      # request against the service via CORS.
      attr_accessor :allowed_origins

      # @return [String] The methods (HTTP request verbs) that the origin
      # domain may use for a CORS request.
      attr_accessor :allowed_methods

      # @return [String] The request headers that the origin domain may specify
      # on the CORS request.
      attr_accessor :allowed_headers

      # @return [String] The response headers that may be sent in the response
      # to the CORS request and exposed by the browser to the request issuer.
      attr_accessor :exposed_headers

      # @return [Integer] The maximum amount time that a browser should cache
      # the preflight OPTIONS request.
      attr_accessor :max_age_in_seconds


      #
      # Mapper for CorsPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CorsPolicy',
          type: {
            name: 'Composite',
            class_name: 'CorsPolicy',
            model_properties: {
              allowed_origins: {
                client_side_validation: true,
                required: true,
                serialized_name: 'allowedOrigins',
                type: {
                  name: 'String'
                }
              },
              allowed_methods: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allowedMethods',
                type: {
                  name: 'String'
                }
              },
              allowed_headers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allowedHeaders',
                type: {
                  name: 'String'
                }
              },
              exposed_headers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'exposedHeaders',
                type: {
                  name: 'String'
                }
              },
              max_age_in_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxAgeInSeconds',
                constraints: {
                  InclusiveMaximum: 2147483647,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end