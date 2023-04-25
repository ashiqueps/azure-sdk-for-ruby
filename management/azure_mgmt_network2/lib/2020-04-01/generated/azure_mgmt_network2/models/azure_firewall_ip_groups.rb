# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_04_01
  module Models
    #
    # IpGroups associated with azure firewall.
    #
    class AzureFirewallIpGroups

      include MsRestAzure2

      # @return [String] Resource ID.
      attr_accessor :id

      # @return [String] The iteration number.
      attr_accessor :change_number


      #
      # Mapper for AzureFirewallIpGroups class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureFirewallIpGroups',
          type: {
            name: 'Composite',
            class_name: 'AzureFirewallIpGroups',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              change_number: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'changeNumber',
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
