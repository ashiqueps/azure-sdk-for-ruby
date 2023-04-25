# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_04_01
  module Models
    #
    # Inbound NAT pool of the load balancer.
    #
    class InboundNatPool < SubResource

      include MsRestAzure2

      # @return [SubResource] A reference to frontend IP addresses.
      attr_accessor :frontend_ipconfiguration

      # @return [TransportProtocol] The reference to the transport protocol
      # used by the inbound NAT pool. Possible values include: 'Udp', 'Tcp',
      # 'All'
      attr_accessor :protocol

      # @return [Integer] The first port number in the range of external ports
      # that will be used to provide Inbound Nat to NICs associated with a load
      # balancer. Acceptable values range between 1 and 65534.
      attr_accessor :frontend_port_range_start

      # @return [Integer] The last port number in the range of external ports
      # that will be used to provide Inbound Nat to NICs associated with a load
      # balancer. Acceptable values range between 1 and 65535.
      attr_accessor :frontend_port_range_end

      # @return [Integer] The port used for internal connections on the
      # endpoint. Acceptable values are between 1 and 65535.
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
      # pool resource. Possible values include: 'Succeeded', 'Updating',
      # 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within the set
      # of inbound NAT pools used by the load balancer. This name can be used
      # to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Type of the resource.
      attr_accessor :type


      #
      # Mapper for InboundNatPool class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InboundNatPool',
          type: {
            name: 'Composite',
            class_name: 'InboundNatPool',
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
              protocol: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.protocol',
                type: {
                  name: 'String'
                }
              },
              frontend_port_range_start: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.frontendPortRangeStart',
                type: {
                  name: 'Number'
                }
              },
              frontend_port_range_end: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.frontendPortRangeEnd',
                type: {
                  name: 'Number'
                }
              },
              backend_port: {
                client_side_validation: true,
                required: true,
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
