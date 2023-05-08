# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2017_09_01
  module Models
    #
    # Subnet in a virtual network resource.
    #
    class Subnet < SubResource

      include MsRestAzure2

      # @return [String] The address prefix for the subnet.
      attr_accessor :address_prefix

      # @return [NetworkSecurityGroup] The reference of the
      # NetworkSecurityGroup resource.
      attr_accessor :network_security_group

      # @return [RouteTable] The reference of the RouteTable resource.
      attr_accessor :route_table

      # @return [Array<ServiceEndpointPropertiesFormat>] An array of service
      # endpoints.
      attr_accessor :service_endpoints

      # @return [Array<IPConfiguration>] Gets an array of references to the
      # network interface IP configurations using subnet.
      attr_accessor :ip_configurations

      # @return [Array<ResourceNavigationLink>] Gets an array of references to
      # the external resources using subnet.
      attr_accessor :resource_navigation_links

      # @return [String] The provisioning state of the resource.
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for Subnet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Subnet',
          type: {
            name: 'Composite',
            class_name: 'Subnet',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              address_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.addressPrefix',
                type: {
                  name: 'String'
                }
              },
              network_security_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.networkSecurityGroup',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkSecurityGroup'
                }
              },
              route_table: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.routeTable',
                type: {
                  name: 'Composite',
                  class_name: 'RouteTable'
                }
              },
              service_endpoints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceEndpoints',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceEndpointPropertiesFormatElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceEndpointPropertiesFormat'
                      }
                  }
                }
              },
              ip_configurations: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.ipConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IPConfiguration'
                      }
                  }
                }
              },
              resource_navigation_links: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceNavigationLinks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ResourceNavigationLinkElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceNavigationLink'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
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