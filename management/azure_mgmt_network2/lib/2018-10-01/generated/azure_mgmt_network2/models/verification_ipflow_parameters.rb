# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_10_01
  module Models
    #
    # Parameters that define the IP flow to be verified.
    #
    class VerificationIPFlowParameters

      include MsRestAzure2

      # @return [String] The ID of the target resource to perform next-hop on.
      attr_accessor :target_resource_id

      # @return [Direction] The direction of the packet represented as a
      # 5-tuple. Possible values include: 'Inbound', 'Outbound'
      attr_accessor :direction

      # @return [IpFlowProtocol] Protocol to be verified on. Possible values
      # include: 'TCP', 'UDP'
      attr_accessor :protocol

      # @return [String] The local port. Acceptable values are a single integer
      # in the range (0-65535). Support for * for the source port, which
      # depends on the direction.
      attr_accessor :local_port

      # @return [String] The remote port. Acceptable values are a single
      # integer in the range (0-65535). Support for * for the source port,
      # which depends on the direction.
      attr_accessor :remote_port

      # @return [String] The local IP address. Acceptable values are valid IPv4
      # addresses.
      attr_accessor :local_ipaddress

      # @return [String] The remote IP address. Acceptable values are valid
      # IPv4 addresses.
      attr_accessor :remote_ipaddress

      # @return [String] The NIC ID. (If VM has multiple NICs and IP forwarding
      # is enabled on any of them, then this parameter must be specified.
      # Otherwise optional).
      attr_accessor :target_nic_resource_id


      #
      # Mapper for VerificationIPFlowParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VerificationIPFlowParameters',
          type: {
            name: 'Composite',
            class_name: 'VerificationIPFlowParameters',
            model_properties: {
              target_resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'targetResourceId',
                type: {
                  name: 'String'
                }
              },
              direction: {
                client_side_validation: true,
                required: true,
                serialized_name: 'direction',
                type: {
                  name: 'String'
                }
              },
              protocol: {
                client_side_validation: true,
                required: true,
                serialized_name: 'protocol',
                type: {
                  name: 'String'
                }
              },
              local_port: {
                client_side_validation: true,
                required: true,
                serialized_name: 'localPort',
                type: {
                  name: 'String'
                }
              },
              remote_port: {
                client_side_validation: true,
                required: true,
                serialized_name: 'remotePort',
                type: {
                  name: 'String'
                }
              },
              local_ipaddress: {
                client_side_validation: true,
                required: true,
                serialized_name: 'localIPAddress',
                type: {
                  name: 'String'
                }
              },
              remote_ipaddress: {
                client_side_validation: true,
                required: true,
                serialized_name: 'remoteIPAddress',
                type: {
                  name: 'String'
                }
              },
              target_nic_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetNicResourceId',
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
