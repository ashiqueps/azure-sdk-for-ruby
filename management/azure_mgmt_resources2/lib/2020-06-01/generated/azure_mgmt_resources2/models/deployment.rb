# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources2::Mgmt::V2020_06_01
  module Models
    #
    # Deployment operation parameters.
    #
    class Deployment

      include MsRestAzure2

      # @return [String] The location to store the deployment data.
      attr_accessor :location

      # @return [DeploymentProperties] The deployment properties.
      attr_accessor :properties

      # @return [Hash{String => String}] Deployment tags
      attr_accessor :tags


      #
      # Mapper for Deployment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Deployment',
          type: {
            name: 'Composite',
            class_name: 'Deployment',
            model_properties: {
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'DeploymentProperties'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
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
