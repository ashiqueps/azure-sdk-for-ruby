# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2017_03_30
  module Models
    #
    # IPConfiguration in a network interface.
    #
    class NetworkInterfaceIPConfiguration < SubResource

      include MsRestAzure2

      # @return [Array<VirtualNetworkTap>] The reference to Virtual Network
      # Taps.
      attr_accessor :virtual_network_taps

      # @return [Array<ApplicationGatewayBackendAddressPool>] The reference of
      # ApplicationGatewayBackendAddressPool resource.
      attr_accessor :application_gateway_backend_address_pools

      # @return [Array<BackendAddressPool>] The reference of
      # LoadBalancerBackendAddressPool resource.
      attr_accessor :load_balancer_backend_address_pools

      # @return [Array<InboundNatRule>] A list of references of
      # LoadBalancerInboundNatRules.
      attr_accessor :load_balancer_inbound_nat_rules

      # @return [String] Private IP address of the IP configuration.
      attr_accessor :private_ipaddress

      # @return [IPAllocationMethod] The private IP address allocation method.
      # Possible values include: 'Static', 'Dynamic'
      attr_accessor :private_ipallocation_method

      # @return [IPVersion] Available from Api-Version 2016-03-30 onwards, it
      # represents whether the specific ipconfiguration is IPv4 or IPv6.
      # Default is taken as IPv4. Possible values include: 'IPv4', 'IPv6'
      attr_accessor :private_ipaddress_version

      # @return [Subnet] Subnet bound to the IP configuration.
      attr_accessor :subnet

      # @return [Boolean] Gets whether this is a primary customer address on
      # the network interface.
      attr_accessor :primary

      # @return [PublicIPAddress] Public IP address bound to the IP
      # configuration.
      attr_accessor :public_ipaddress

      # @return [Array<ApplicationSecurityGroup>] Application security groups
      # in which the IP configuration is included.
      attr_accessor :application_security_groups

      # @return [String] The provisioning state of the network interface IP
      # configuration. Possible values are: 'Updating', 'Deleting', and
      # 'Failed'.
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
              virtual_network_taps: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualNetworkTaps',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualNetworkTapElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualNetworkTap'
                      }
                  }
                }
              },
              application_gateway_backend_address_pools: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.applicationGatewayBackendAddressPools',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayBackendAddressPoolElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayBackendAddressPool'
                      }
                  }
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
              private_ipaddress_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateIPAddressVersion',
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
              application_security_groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.applicationSecurityGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationSecurityGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationSecurityGroup'
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
