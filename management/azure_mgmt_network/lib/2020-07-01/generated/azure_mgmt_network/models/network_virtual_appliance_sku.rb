# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_07_01
  module Models
    #
    # Available NetworkVirtualApplianceSkus

    # Definition of the NetworkVirtualApplianceSkus resource.
    #
    class NetworkVirtualApplianceSku < Resource

      include MsRestAzure

      # @return [String] Network Virtual Appliance Sku vendor.
      attr_accessor :vendor

      # @return [Array<String>] Available Network Virtual Appliance versions.
      attr_accessor :available_versions

      # @return [Array<NetworkVirtualApplianceSkuInstances>] The list of scale
      # units available.
      attr_accessor :available_scale_units

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for NetworkVirtualApplianceSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkVirtualApplianceSku',
          type: {
            name: 'Composite',
            class_name: 'NetworkVirtualApplianceSku',
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
              vendor: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.vendor',
                type: {
                  name: 'String'
                }
              },
              available_versions: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.availableVersions',
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
              available_scale_units: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.availableScaleUnits',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NetworkVirtualApplianceSkuInstancesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkVirtualApplianceSkuInstances'
                      }
                  }
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