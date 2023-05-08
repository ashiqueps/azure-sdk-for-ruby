# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources2::Mgmt::V2019_10_01
  module Models
    #
    # Resource information.
    #
    class GenericResourceExpanded < GenericResource

      include MsRestAzure2

      # @return [DateTime] The created time of the resource. This is only
      # present if requested via the $expand query parameter.
      attr_accessor :created_time

      # @return [DateTime] The changed time of the resource. This is only
      # present if requested via the $expand query parameter.
      attr_accessor :changed_time

      # @return [String] The provisioning state of the resource. This is only
      # present if requested via the $expand query parameter.
      attr_accessor :provisioning_state


      #
      # Mapper for GenericResourceExpanded class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GenericResourceExpanded',
          type: {
            name: 'Composite',
            class_name: 'GenericResourceExpanded',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
              plan: {
                client_side_validation: true,
                required: false,
                serialized_name: 'plan',
                type: {
                  name: 'Composite',
                  class_name: 'Plan'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Object'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                constraints: {
                  Pattern: '^[-\w\._,\(\)]+$'
                },
                type: {
                  name: 'String'
                }
              },
              managed_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'managedBy',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'Identity'
                }
              },
              created_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'createdTime',
                type: {
                  name: 'DateTime'
                }
              },
              changed_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'changedTime',
                type: {
                  name: 'DateTime'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
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