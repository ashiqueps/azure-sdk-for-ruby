# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_02_01
  module Models
    #
    # ResourceNavigationLink resource.
    #
    class ResourceNavigationLink < SubResource

      include MsRestAzure2

      # @return [String] Resource type of the linked resource.
      attr_accessor :linked_resource_type

      # @return [String] Link to the external resource
      attr_accessor :link

      # @return [String] Provisioning state of the ResourceNavigationLink
      # resource.
      attr_accessor :provisioning_state

      # @return [String] Name of the resource that is unique within a resource
      # group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for ResourceNavigationLink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceNavigationLink',
          type: {
            name: 'Composite',
            class_name: 'ResourceNavigationLink',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              linked_resource_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.linkedResourceType',
                type: {
                  name: 'String'
                }
              },
              link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.link',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
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
