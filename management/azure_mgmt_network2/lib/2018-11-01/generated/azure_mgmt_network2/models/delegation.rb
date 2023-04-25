# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_11_01
  module Models
    #
    # Details the service to which the subnet is delegated.
    #
    class Delegation < SubResource

      include MsRestAzure2

      # @return [String] The name of the service to whom the subnet should be
      # delegated (e.g. Microsoft.Sql/servers)
      attr_accessor :service_name

      # @return [Array<String>] Describes the actions permitted to the service
      # upon delegation
      attr_accessor :actions

      # @return [String] The provisioning state of the resource.
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within a
      # subnet. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for Delegation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Delegation',
          type: {
            name: 'Composite',
            class_name: 'Delegation',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceName',
                type: {
                  name: 'String'
                }
              },
              actions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.actions',
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
