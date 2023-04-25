# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_12_01
  module Models
    #
    # An traffic selector policy for a virtual network gateway connection.
    #
    class TrafficSelectorPolicy

      include MsRestAzure2

      # @return [Array<String>] A collection of local address spaces in CIDR
      # format.
      attr_accessor :local_address_ranges

      # @return [Array<String>] A collection of remote address spaces in CIDR
      # format.
      attr_accessor :remote_address_ranges


      #
      # Mapper for TrafficSelectorPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TrafficSelectorPolicy',
          type: {
            name: 'Composite',
            class_name: 'TrafficSelectorPolicy',
            model_properties: {
              local_address_ranges: {
                client_side_validation: true,
                required: true,
                serialized_name: 'localAddressRanges',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              remote_address_ranges: {
                client_side_validation: true,
                required: true,
                serialized_name: 'remoteAddressRanges',
                type: {
                  name: 'Sequence',
                  element: {
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
      end
    end
  end
end
