# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_11_01
  module Models
    #
    # Filter that is applied to packet capture request. Multiple filters can be
    # applied.
    #
    class PacketCaptureFilter

      include MsRestAzure2

      # @return [PcProtocol] Protocol to be filtered on. Possible values
      # include: 'TCP', 'UDP', 'Any'. Default value: 'Any' .
      attr_accessor :protocol

      # @return [String] Local IP Address to be filtered on. Notation:
      # "127.0.0.1" for single address entry. "127.0.0.1-127.0.0.255" for
      # range. "127.0.0.1;127.0.0.5"? for multiple entries. Multiple ranges not
      # currently supported. Mixing ranges with multiple entries not currently
      # supported. Default = null.
      attr_accessor :local_ipaddress

      # @return [String] Local IP Address to be filtered on. Notation:
      # "127.0.0.1" for single address entry. "127.0.0.1-127.0.0.255" for
      # range. "127.0.0.1;127.0.0.5;" for multiple entries. Multiple ranges not
      # currently supported. Mixing ranges with multiple entries not currently
      # supported. Default = null.
      attr_accessor :remote_ipaddress

      # @return [String] Local port to be filtered on. Notation: "80" for
      # single port entry."80-85" for range. "80;443;" for multiple entries.
      # Multiple ranges not currently supported. Mixing ranges with multiple
      # entries not currently supported. Default = null.
      attr_accessor :local_port

      # @return [String] Remote port to be filtered on. Notation: "80" for
      # single port entry."80-85" for range. "80;443;" for multiple entries.
      # Multiple ranges not currently supported. Mixing ranges with multiple
      # entries not currently supported. Default = null.
      attr_accessor :remote_port


      #
      # Mapper for PacketCaptureFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PacketCaptureFilter',
          type: {
            name: 'Composite',
            class_name: 'PacketCaptureFilter',
            model_properties: {
              protocol: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protocol',
                default_value: 'Any',
                type: {
                  name: 'String'
                }
              },
              local_ipaddress: {
                client_side_validation: true,
                required: false,
                serialized_name: 'localIPAddress',
                type: {
                  name: 'String'
                }
              },
              remote_ipaddress: {
                client_side_validation: true,
                required: false,
                serialized_name: 'remoteIPAddress',
                type: {
                  name: 'String'
                }
              },
              local_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'localPort',
                type: {
                  name: 'String'
                }
              },
              remote_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'remotePort',
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
