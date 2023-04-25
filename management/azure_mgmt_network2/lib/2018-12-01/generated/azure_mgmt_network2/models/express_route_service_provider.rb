# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_12_01
  module Models
    #
    # A ExpressRouteResourceProvider object.
    #
    class ExpressRouteServiceProvider < Resource

      include MsRestAzure2

      # @return [Array<String>] Get a list of peering locations.
      attr_accessor :peering_locations

      # @return [Array<ExpressRouteServiceProviderBandwidthsOffered>] Gets
      # bandwidths offered.
      attr_accessor :bandwidths_offered

      # @return [String] Gets the provisioning state of the resource.
      attr_accessor :provisioning_state


      #
      # Mapper for ExpressRouteServiceProvider class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteServiceProvider',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteServiceProvider',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              peering_locations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peeringLocations',
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
              bandwidths_offered: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.bandwidthsOffered',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ExpressRouteServiceProviderBandwidthsOfferedElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressRouteServiceProviderBandwidthsOffered'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
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
