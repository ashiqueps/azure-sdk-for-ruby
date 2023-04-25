# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_08_01
  module Models
    #
    # Information about an issue encountered in the process of checking for
    # connectivity.
    #
    class ConnectivityIssue

      include MsRestAzure2

      # @return [Origin] The origin of the issue. Possible values include:
      # 'Local', 'Inbound', 'Outbound'
      attr_accessor :origin

      # @return [Severity] The severity of the issue. Possible values include:
      # 'Error', 'Warning'
      attr_accessor :severity

      # @return [IssueType] The type of issue. Possible values include:
      # 'Unknown', 'AgentStopped', 'GuestFirewall', 'DnsResolution',
      # 'SocketBind', 'NetworkSecurityRule', 'UserDefinedRoute',
      # 'PortThrottled', 'Platform'
      attr_accessor :type

      # @return [Array<Hash{String => String}>] Provides additional context on
      # the issue.
      attr_accessor :context


      #
      # Mapper for ConnectivityIssue class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectivityIssue',
          type: {
            name: 'Composite',
            class_name: 'ConnectivityIssue',
            model_properties: {
              origin: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'origin',
                type: {
                  name: 'String'
                }
              },
              severity: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'severity',
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
              context: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'context',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HashElementType',
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
