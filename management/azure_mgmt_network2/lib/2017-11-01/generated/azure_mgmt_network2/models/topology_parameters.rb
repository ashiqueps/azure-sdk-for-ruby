# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2017_11_01
  module Models
    #
    # Parameters that define the representation of topology.
    #
    class TopologyParameters

      include MsRestAzure2

      # @return [String] The name of the target resource group to perform
      # topology on.
      attr_accessor :target_resource_group_name

      # @return [SubResource] The reference of the Virtual Network resource.
      attr_accessor :target_virtual_network

      # @return [SubResource] The reference of the Subnet resource.
      attr_accessor :target_subnet


      #
      # Mapper for TopologyParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TopologyParameters',
          type: {
            name: 'Composite',
            class_name: 'TopologyParameters',
            model_properties: {
              target_resource_group_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetResourceGroupName',
                type: {
                  name: 'String'
                }
              },
              target_virtual_network: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetVirtualNetwork',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              target_subnet: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetSubnet',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              }
            }
          }
        }
      end
    end
  end
end
