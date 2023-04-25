# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_10_01
  module Models
    #
    # List of properties of the device.
    #
    class DeviceProperties

      include MsRestAzure2

      # @return [String] Name of the device Vendor.
      attr_accessor :device_vendor

      # @return [String] Model of the device.
      attr_accessor :device_model

      # @return [Integer] Link speed.
      attr_accessor :link_speed_in_mbps


      #
      # Mapper for DeviceProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeviceProperties',
          type: {
            name: 'Composite',
            class_name: 'DeviceProperties',
            model_properties: {
              device_vendor: {
                client_side_validation: true,
                required: false,
                serialized_name: 'deviceVendor',
                type: {
                  name: 'String'
                }
              },
              device_model: {
                client_side_validation: true,
                required: false,
                serialized_name: 'deviceModel',
                type: {
                  name: 'String'
                }
              },
              link_speed_in_mbps: {
                client_side_validation: true,
                required: false,
                serialized_name: 'linkSpeedInMbps',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
