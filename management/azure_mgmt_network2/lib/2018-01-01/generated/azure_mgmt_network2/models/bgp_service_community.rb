# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_01_01
  module Models
    #
    # Service Community Properties.
    #
    class BgpServiceCommunity < Resource

      include MsRestAzure2

      # @return [String] The name of the bgp community. e.g. Skype.
      attr_accessor :service_name

      # @return [Array<BGPCommunity>] Get a list of bgp communities.
      attr_accessor :bgp_communities


      #
      # Mapper for BgpServiceCommunity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BgpServiceCommunity',
          type: {
            name: 'Composite',
            class_name: 'BgpServiceCommunity',
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
              service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceName',
                type: {
                  name: 'String'
                }
              },
              bgp_communities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.bgpCommunities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BGPCommunityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BGPCommunity'
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
