# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_05_01
  module Models
    #
    # Usage details for subnet.
    #
    class VirtualNetworkUsage

      include MsRestAzure2

      # @return [Float] Indicates number of IPs used from the Subnet.
      attr_accessor :current_value

      # @return [String] Subnet identifier.
      attr_accessor :id

      # @return [Float] Indicates the size of the subnet.
      attr_accessor :limit

      # @return [VirtualNetworkUsageName] The name containing common and
      # localized value for usage.
      attr_accessor :name

      # @return [String] Usage units. Returns 'Count'.
      attr_accessor :unit


      #
      # Mapper for VirtualNetworkUsage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualNetworkUsage',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkUsage',
            model_properties: {
              current_value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'currentValue',
                type: {
                  name: 'Double'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              limit: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'limit',
                type: {
                  name: 'Double'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualNetworkUsageName'
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'unit',
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
