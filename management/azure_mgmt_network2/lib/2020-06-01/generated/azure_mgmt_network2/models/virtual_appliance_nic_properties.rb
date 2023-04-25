# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_06_01
  module Models
    #
    # Network Virtual Appliance NIC properties.
    #
    class VirtualApplianceNicProperties

      include MsRestAzure2

      # @return [String] NIC name.
      attr_accessor :name

      # @return [String] Public IP address.
      attr_accessor :public_ip_address

      # @return [String] Private IP address.
      attr_accessor :private_ip_address


      #
      # Mapper for VirtualApplianceNicProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualApplianceNicProperties',
          type: {
            name: 'Composite',
            class_name: 'VirtualApplianceNicProperties',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              public_ip_address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'publicIpAddress',
                type: {
                  name: 'String'
                }
              },
              private_ip_address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'privateIpAddress',
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
