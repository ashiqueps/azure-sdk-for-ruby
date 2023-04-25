# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_07_01
  module Models
    #
    # ServiceAssociationLink resource.
    #
    class ServiceAssociationLink < SubResource

      include MsRestAzure2

      # @return [String] Resource type of the linked resource.
      attr_accessor :linked_resource_type

      # @return [String] Link to the external resource.
      attr_accessor :link

      # @return [ProvisioningState] The provisioning state of the service
      # association link resource. Possible values include: 'Succeeded',
      # 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [Boolean] If true, the resource can be deleted.
      attr_accessor :allow_delete

      # @return [Array<String>] A list of locations.
      attr_accessor :locations

      # @return [String] Name of the resource that is unique within a resource
      # group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Resource type.
      attr_accessor :type


      #
      # Mapper for ServiceAssociationLink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceAssociationLink',
          type: {
            name: 'Composite',
            class_name: 'ServiceAssociationLink',
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
              allow_delete: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowDelete',
                type: {
                  name: 'Boolean'
                }
              },
              locations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.locations',
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
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
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
