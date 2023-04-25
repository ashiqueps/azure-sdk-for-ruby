# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_07_01
  module Models
    #
    # Custom IP prefix resource.
    #
    class CustomIpPrefix < Resource

      include MsRestAzure2

      # @return [String] The prefix range in CIDR notation. Should include the
      # start address and the prefix length.
      attr_accessor :cidr

      # @return [CommissionedState] The commissioned state of the Custom IP
      # Prefix. Possible values include: 'Provisioning', 'Provisioned',
      # 'Commissioning', 'Commissioned', 'Decommissioning', 'Deprovisioning'
      attr_accessor :commissioned_state

      # @return [Array<SubResource>] The list of all referenced
      # PublicIpPrefixes.
      attr_accessor :public_ip_prefixes

      # @return [String] The resource GUID property of the custom IP prefix
      # resource.
      attr_accessor :resource_guid

      # @return [ProvisioningState] The provisioning state of the custom IP
      # prefix resource. Possible values include: 'Succeeded', 'Updating',
      # 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [Array<String>] A list of availability zones denoting the IP
      # allocated for the resource needs to come from.
      attr_accessor :zones


      #
      # Mapper for CustomIpPrefix class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CustomIpPrefix',
          type: {
            name: 'Composite',
            class_name: 'CustomIpPrefix',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
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
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
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
              },
              cidr: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.cidr',
                type: {
                  name: 'String'
                }
              },
              commissioned_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.commissionedState',
                type: {
                  name: 'String'
                }
              },
              public_ip_prefixes: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.publicIpPrefixes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              resource_guid: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceGuid',
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
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              zones: {
                client_side_validation: true,
                required: false,
                serialized_name: 'zones',
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
