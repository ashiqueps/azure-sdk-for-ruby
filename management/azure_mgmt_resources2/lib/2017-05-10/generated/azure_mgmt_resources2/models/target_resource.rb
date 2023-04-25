# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources2::Mgmt::V2017_05_10
  module Models
    #
    # Target resource.
    #
    class TargetResource

      include MsRestAzure2

      # @return [String] The ID of the resource.
      attr_accessor :id

      # @return [String] The name of the resource.
      attr_accessor :resource_name

      # @return [String] The type of the resource.
      attr_accessor :resource_type


      #
      # Mapper for TargetResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TargetResource',
          type: {
            name: 'Composite',
            class_name: 'TargetResource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              resource_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceName',
                type: {
                  name: 'String'
                }
              },
              resource_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceType',
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
