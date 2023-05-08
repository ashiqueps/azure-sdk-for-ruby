# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_06_01
  module Models
    #
    # Pool of backend IP addresses.
    #
    class BackendAddressPool < SubResource

      include MsRestAzure2

      # @return [Array<LoadBalancerBackendAddress>] An array of backend
      # addresses.
      attr_accessor :load_balancer_backend_addresses

      # @return [Array<NetworkInterfaceIPConfiguration>] An array of references
      # to IP addresses defined in network interfaces.
      attr_accessor :backend_ipconfigurations

      # @return [Array<SubResource>] An array of references to load balancing
      # rules that use this backend address pool.
      attr_accessor :load_balancing_rules

      # @return [SubResource] A reference to an outbound rule that uses this
      # backend address pool.
      attr_accessor :outbound_rule

      # @return [Array<SubResource>] An array of references to outbound rules
      # that use this backend address pool.
      attr_accessor :outbound_rules

      # @return [ProvisioningState] The provisioning state of the backend
      # address pool resource. Possible values include: 'Succeeded',
      # 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within the set
      # of backend address pools used by the load balancer. This name can be
      # used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Type of the resource.
      attr_accessor :type


      #
      # Mapper for BackendAddressPool class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackendAddressPool',
          type: {
            name: 'Composite',
            class_name: 'BackendAddressPool',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              load_balancer_backend_addresses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.loadBalancerBackendAddresses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LoadBalancerBackendAddressElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LoadBalancerBackendAddress'
                      }
                  }
                }
              },
              backend_ipconfigurations: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.backendIPConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NetworkInterfaceIPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkInterfaceIPConfiguration'
                      }
                  }
                }
              },
              load_balancing_rules: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.loadBalancingRules',
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
              outbound_rule: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.outboundRule',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              outbound_rules: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.outboundRules',
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