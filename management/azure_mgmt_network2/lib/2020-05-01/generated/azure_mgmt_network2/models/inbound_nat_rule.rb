# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_05_01
  module Models
    #
    # Inbound NAT rule of the load balancer.
    #
    class InboundNatRule < SubResource

      include MsRestAzure2

      # @return [SubResource] A reference to frontend IP addresses.
      attr_accessor :frontend_ipconfiguration

      # @return [NetworkInterfaceIPConfiguration] A reference to a private IP
      # address defined on a network interface of a VM. Traffic sent to the
      # frontend port of each of the frontend IP configurations is forwarded to
      # the backend IP.
      attr_accessor :backend_ipconfiguration

      # @return [TransportProtocol] The reference to the transport protocol
      # used by the load balancing rule. Possible values include: 'Udp', 'Tcp',
      # 'All'
      attr_accessor :protocol

      # @return [Integer] The port for the external endpoint. Port numbers for
      # each rule must be unique within the Load Balancer. Acceptable values
      # range from 1 to 65534.
      attr_accessor :frontend_port

      # @return [Integer] The port used for the internal endpoint. Acceptable
      # values range from 1 to 65535.
      attr_accessor :backend_port

      # @return [Integer] The timeout for the TCP idle connection. The value
      # can be set between 4 and 30 minutes. The default value is 4 minutes.
      # This element is only used when the protocol is set to TCP.
      attr_accessor :idle_timeout_in_minutes

      # @return [Boolean] Configures a virtual machine's endpoint for the
      # floating IP capability required to configure a SQL AlwaysOn
      # Availability Group. This setting is required when using the SQL
      # AlwaysOn Availability Groups in SQL server. This setting can't be
      # changed after you create the endpoint.
      attr_accessor :enable_floating_ip

      # @return [Boolean] Receive bidirectional TCP Reset on TCP flow idle
      # timeout or unexpected connection termination. This element is only used
      # when the protocol is set to TCP.
      attr_accessor :enable_tcp_reset

      # @return [ProvisioningState] The provisioning state of the inbound NAT
      # rule resource. Possible values include: 'Succeeded', 'Updating',
      # 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within the set
      # of inbound NAT rules used by the load balancer. This name can be used
      # to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Type of the resource.
      attr_accessor :type


      #
      # Mapper for InboundNatRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InboundNatRule',
          type: {
            name: 'Composite',
            class_name: 'InboundNatRule',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              frontend_ipconfiguration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.frontendIPConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              backend_ipconfiguration: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.backendIPConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkInterfaceIPConfiguration'
                }
              },
              protocol: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.protocol',
                type: {
                  name: 'String'
                }
              },
              frontend_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.frontendPort',
                type: {
                  name: 'Number'
                }
              },
              backend_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.backendPort',
                type: {
                  name: 'Number'
                }
              },
              idle_timeout_in_minutes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.idleTimeoutInMinutes',
                type: {
                  name: 'Number'
                }
              },
              enable_floating_ip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableFloatingIP',
                type: {
                  name: 'Boolean'
                }
              },
              enable_tcp_reset: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableTcpReset',
                type: {
                  name: 'Boolean'
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
