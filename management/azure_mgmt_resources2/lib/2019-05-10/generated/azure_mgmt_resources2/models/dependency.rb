# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources2::Mgmt::V2019_05_10
  module Models
    #
    # Deployment dependency information.
    #
    class Dependency

      include MsRestAzure2

      # @return [Array<BasicDependency>] The list of dependencies.
      attr_accessor :depends_on

      # @return [String] The ID of the dependency.
      attr_accessor :id

      # @return [String] The dependency resource type.
      attr_accessor :resource_type

      # @return [String] The dependency resource name.
      attr_accessor :resource_name


      #
      # Mapper for Dependency class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Dependency',
          type: {
            name: 'Composite',
            class_name: 'Dependency',
            model_properties: {
              depends_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dependsOn',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BasicDependencyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BasicDependency'
                      }
                  }
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
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
              },
              resource_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceName',
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
