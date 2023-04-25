# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_07_01
  module Models
    #
    # Properties of the service tag information.
    #
    class ServiceTagInformationPropertiesFormat

      include MsRestAzure2

      # @return [String] The iteration number of service tag.
      attr_accessor :change_number

      # @return [String] The region of service tag.
      attr_accessor :region

      # @return [String] The name of system service.
      attr_accessor :system_service

      # @return [Array<String>] The list of IP address prefixes.
      attr_accessor :address_prefixes


      #
      # Mapper for ServiceTagInformationPropertiesFormat class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceTagInformationPropertiesFormat',
          type: {
            name: 'Composite',
            class_name: 'ServiceTagInformationPropertiesFormat',
            model_properties: {
              change_number: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'changeNumber',
                type: {
                  name: 'String'
                }
              },
              region: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'region',
                type: {
                  name: 'String'
                }
              },
              system_service: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'systemService',
                type: {
                  name: 'String'
                }
              },
              address_prefixes: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'addressPrefixes',
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
