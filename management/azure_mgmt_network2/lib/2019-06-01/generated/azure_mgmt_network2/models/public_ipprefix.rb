# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_06_01
  module Models
    #
    # Public IP prefix resource.
    #
    class PublicIPPrefix < Resource

      include MsRestAzure2

      # @return [PublicIPPrefixSku] The public IP prefix SKU.
      attr_accessor :sku

      # @return [IPVersion] The public IP address version. Possible values
      # include: 'IPv4', 'IPv6'
      attr_accessor :public_ipaddress_version

      # @return [Array<IpTag>] The list of tags associated with the public IP
      # prefix.
      attr_accessor :ip_tags

      # @return [Integer] The Length of the Public IP Prefix.
      attr_accessor :prefix_length

      # @return [String] The allocated Prefix.
      attr_accessor :ip_prefix

      # @return [Array<ReferencedPublicIpAddress>] The list of all referenced
      # PublicIPAddresses.
      attr_accessor :public_ipaddresses

      # @return [SubResource] The reference to load balancer frontend IP
      # configuration associated with the public IP prefix.
      attr_accessor :load_balancer_frontend_ip_configuration

      # @return [String] The resource GUID property of the public IP prefix
      # resource.
      attr_accessor :resource_guid

      # @return [String] The provisioning state of the Public IP prefix
      # resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [Array<String>] A list of availability zones denoting the IP
      # allocated for the resource needs to come from.
      attr_accessor :zones


      #
      # Mapper for PublicIPPrefix class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PublicIPPrefix',
          type: {
            name: 'Composite',
            class_name: 'PublicIPPrefix',
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
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'PublicIPPrefixSku'
                }
              },
              public_ipaddress_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publicIPAddressVersion',
                type: {
                  name: 'String'
                }
              },
              ip_tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ipTags',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IpTagElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IpTag'
                      }
                  }
                }
              },
              prefix_length: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.prefixLength',
                type: {
                  name: 'Number'
                }
              },
              ip_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ipPrefix',
                type: {
                  name: 'String'
                }
              },
              public_ipaddresses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publicIPAddresses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ReferencedPublicIpAddressElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ReferencedPublicIpAddress'
                      }
                  }
                }
              },
              load_balancer_frontend_ip_configuration: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.loadBalancerFrontendIpConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              resource_guid: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceGuid',
                type: {
                  name: 'String'
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
              etag: {
                client_side_validation: true,
                required: false,
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
