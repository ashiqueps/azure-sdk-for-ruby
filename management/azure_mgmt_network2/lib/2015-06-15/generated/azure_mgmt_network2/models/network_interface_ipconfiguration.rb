# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2015_06_15
  module Models
    #
    # IPConfiguration in a network interface.
    #
    class NetworkInterfaceIPConfiguration < SubResource

      include MsRestAzure2

      # @return [Array<BackendAddressPool>] The reference of
      # LoadBalancerBackendAddressPool resource.
      attr_accessor :load_balancer_backend_address_pools

      # @return [Array<InboundNatRule>] A list of references of
      # LoadBalancerInboundNatRules.
      attr_accessor :load_balancer_inbound_nat_rules

      # @return [String]
      attr_accessor :private_ipaddress

      # @return [IPAllocationMethod] Defines how a private IP address is
      # assigned. Possible values are: 'Static' and 'Dynamic'. Possible values
      # include: 'Static', 'Dynamic'
      attr_accessor :private_ipallocation_method

      # @return [Subnet]
      attr_accessor :subnet

      # @return [Boolean] Gets whether this is a primary customer address on
      # the network interface.
      attr_accessor :primary

      # @return [PublicIPAddress]
      attr_accessor :public_ipaddress

      # @return [String]
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for NetworkInterfaceIPConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkInterfaceIPConfiguration',
          type: {
            name: 'Composite',
            class_name: 'NetworkInterfaceIPConfiguration',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              load_balancer_backend_address_pools: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.loadBalancerBackendAddressPools',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BackendAddressPoolElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BackendAddressPool'
                      }
                  }
                }
              },
              load_balancer_inbound_nat_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.loadBalancerInboundNatRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'InboundNatRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InboundNatRule'
                      }
                  }
                }
              },
              private_ipaddress: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateIPAddress',
                type: {
                  name: 'String'
                }
              },
              private_ipallocation_method: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateIPAllocationMethod',
                type: {
                  name: 'String'
                }
              },
              subnet: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.subnet',
                type: {
                  name: 'Composite',
                  class_name: 'Subnet'
                }
              },
              primary: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.primary',
                type: {
                  name: 'Boolean'
                }
              },
              public_ipaddress: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publicIPAddress',
                type: {
                  name: 'Composite',
                  class_name: 'PublicIPAddress'
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
