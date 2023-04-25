# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_07_01
  module Models
    #
    # Peering in an ExpressRoute Cross Connection resource.
    #
    class ExpressRouteCrossConnectionPeering < SubResource

      include MsRestAzure2

      # @return [ExpressRoutePeeringType] The peering type. Possible values
      # include: 'AzurePublicPeering', 'AzurePrivatePeering',
      # 'MicrosoftPeering'
      attr_accessor :peering_type

      # @return [ExpressRoutePeeringState] The peering state. Possible values
      # include: 'Disabled', 'Enabled'
      attr_accessor :state

      # @return [Integer] The Azure ASN.
      attr_accessor :azure_asn

      # @return [Integer] The peer ASN.
      attr_accessor :peer_asn

      # @return [String] The primary address prefix.
      attr_accessor :primary_peer_address_prefix

      # @return [String] The secondary address prefix.
      attr_accessor :secondary_peer_address_prefix

      # @return [String] The primary port.
      attr_accessor :primary_azure_port

      # @return [String] The secondary port.
      attr_accessor :secondary_azure_port

      # @return [String] The shared key.
      attr_accessor :shared_key

      # @return [Integer] The VLAN ID.
      attr_accessor :vlan_id

      # @return [ExpressRouteCircuitPeeringConfig] The Microsoft peering
      # configuration.
      attr_accessor :microsoft_peering_config

      # @return [String] Gets the provisioning state of the public IP resource.
      # Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] The GatewayManager Etag.
      attr_accessor :gateway_manager_etag

      # @return [String] Gets whether the provider or the customer last
      # modified the peering.
      attr_accessor :last_modified_by

      # @return [Ipv6ExpressRouteCircuitPeeringConfig] The IPv6 peering
      # configuration.
      attr_accessor :ipv6peering_config

      # @return [String] Gets name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for ExpressRouteCrossConnectionPeering class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteCrossConnectionPeering',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCrossConnectionPeering',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              peering_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peeringType',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              azure_asn: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.azureASN',
                type: {
                  name: 'Number'
                }
              },
              peer_asn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peerASN',
                constraints: {
                  InclusiveMaximum: 4294967295,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              primary_peer_address_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.primaryPeerAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              secondary_peer_address_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.secondaryPeerAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              primary_azure_port: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.primaryAzurePort',
                type: {
                  name: 'String'
                }
              },
              secondary_azure_port: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.secondaryAzurePort',
                type: {
                  name: 'String'
                }
              },
              shared_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sharedKey',
                type: {
                  name: 'String'
                }
              },
              vlan_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vlanId',
                type: {
                  name: 'Number'
                }
              },
              microsoft_peering_config: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.microsoftPeeringConfig',
                type: {
                  name: 'Composite',
                  class_name: 'ExpressRouteCircuitPeeringConfig'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              gateway_manager_etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.gatewayManagerEtag',
                type: {
                  name: 'String'
                }
              },
              last_modified_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastModifiedBy',
                type: {
                  name: 'String'
                }
              },
              ipv6peering_config: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ipv6PeeringConfig',
                type: {
                  name: 'Composite',
                  class_name: 'Ipv6ExpressRouteCircuitPeeringConfig'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
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
