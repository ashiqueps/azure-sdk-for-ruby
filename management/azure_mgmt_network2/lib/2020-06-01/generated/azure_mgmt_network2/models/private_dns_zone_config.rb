# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2020_06_01
  module Models
    #
    # PrivateDnsZoneConfig resource.
    #
    class PrivateDnsZoneConfig

      include MsRestAzure2

      # @return [String] Name of the resource that is unique within a resource
      # group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] The resource id of the private dns zone.
      attr_accessor :private_dns_zone_id

      # @return [Array<RecordSet>] A collection of information regarding a
      # recordSet, holding information to identify private resources.
      attr_accessor :record_sets


      #
      # Mapper for PrivateDnsZoneConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateDnsZoneConfig',
          type: {
            name: 'Composite',
            class_name: 'PrivateDnsZoneConfig',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              private_dns_zone_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateDnsZoneId',
                type: {
                  name: 'String'
                }
              },
              record_sets: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.recordSets',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RecordSetElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecordSet'
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
