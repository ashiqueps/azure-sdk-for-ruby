# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_04_01
  module Models
    #
    # Describes a connection monitor test configuration.
    #
    class ConnectionMonitorTestConfiguration

      include MsRestAzure2

      # @return [String] The name of the connection monitor test configuration.
      attr_accessor :name

      # @return [Integer] The frequency of test evaluation, in seconds.
      attr_accessor :test_frequency_sec

      # @return [ConnectionMonitorTestConfigurationProtocol] The protocol to
      # use in test evaluation. Possible values include: 'Tcp', 'Http', 'Icmp'
      attr_accessor :protocol

      # @return [PreferredIPVersion] The preferred IP version to use in test
      # evaluation. The connection monitor may choose to use a different
      # version depending on other parameters. Possible values include: 'IPv4',
      # 'IPv6'
      attr_accessor :preferred_ipversion

      # @return [ConnectionMonitorHttpConfiguration] The parameters used to
      # perform test evaluation over HTTP.
      attr_accessor :http_configuration

      # @return [ConnectionMonitorTcpConfiguration] The parameters used to
      # perform test evaluation over TCP.
      attr_accessor :tcp_configuration

      # @return [ConnectionMonitorIcmpConfiguration] The parameters used to
      # perform test evaluation over ICMP.
      attr_accessor :icmp_configuration

      # @return [ConnectionMonitorSuccessThreshold] The threshold for declaring
      # a test successful.
      attr_accessor :success_threshold


      #
      # Mapper for ConnectionMonitorTestConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionMonitorTestConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ConnectionMonitorTestConfiguration',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              test_frequency_sec: {
                client_side_validation: true,
                required: false,
                serialized_name: 'testFrequencySec',
                type: {
                  name: 'Number'
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
              preferred_ipversion: {
                client_side_validation: true,
                required: false,
                serialized_name: 'preferredIPVersion',
                type: {
                  name: 'String'
                }
              },
              http_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'httpConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectionMonitorHttpConfiguration'
                }
              },
              tcp_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tcpConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectionMonitorTcpConfiguration'
                }
              },
              icmp_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'icmpConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectionMonitorIcmpConfiguration'
                }
              },
              success_threshold: {
                client_side_validation: true,
                required: false,
                serialized_name: 'successThreshold',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectionMonitorSuccessThreshold'
                }
              }
            }
          }
        }
      end
    end
  end
end
