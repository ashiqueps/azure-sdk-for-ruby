# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_06_01
  module Models
    #
    # NetworkSecurityGroup resource.
    #
    class NetworkSecurityGroup < Resource

      include MsRestAzure2

      # @return [Array<SecurityRule>] A collection of security rules of the
      # network security group.
      attr_accessor :security_rules

      # @return [Array<SecurityRule>] The default security rules of network
      # security group.
      attr_accessor :default_security_rules

      # @return [Array<NetworkInterface>] A collection of references to network
      # interfaces.
      attr_accessor :network_interfaces

      # @return [Array<Subnet>] A collection of references to subnets.
      attr_accessor :subnets

      # @return [Array<FlowLog>] A collection of references to flow log
      # resources.
      attr_accessor :flow_logs

      # @return [String] The resource GUID property of the network security
      # group resource.
      attr_accessor :resource_guid

      # @return [ProvisioningState] The provisioning state of the network
      # security group resource. Possible values include: 'Succeeded',
      # 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for NetworkSecurityGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkSecurityGroup',
          type: {
            name: 'Composite',
            class_name: 'NetworkSecurityGroup',
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
              security_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.securityRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SecurityRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SecurityRule'
                      }
                  }
                }
              },
              default_security_rules: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.defaultSecurityRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SecurityRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SecurityRule'
                      }
                  }
                }
              },
              network_interfaces: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.networkInterfaces',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NetworkInterfaceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkInterface'
                      }
                  }
                }
              },
              subnets: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.subnets',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubnetElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Subnet'
                      }
                  }
                }
              },
              flow_logs: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.flowLogs',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FlowLogElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FlowLog'
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
              }
            }
          }
        }
      end
    end
  end
end
