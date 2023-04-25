# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2018_11_01
  module Models
    #
    # ExpressRouteCircuit resource
    #
    class ExpressRouteCircuit < Resource

      include MsRestAzure2

      # @return [ExpressRouteCircuitSku] The SKU.
      attr_accessor :sku

      # @return [Boolean] Allow classic operations
      attr_accessor :allow_classic_operations

      # @return [String] The CircuitProvisioningState state of the resource.
      attr_accessor :circuit_provisioning_state

      # @return [ServiceProviderProvisioningState] The
      # ServiceProviderProvisioningState state of the resource. Possible values
      # are 'NotProvisioned', 'Provisioning', 'Provisioned', and
      # 'Deprovisioning'. Possible values include: 'NotProvisioned',
      # 'Provisioning', 'Provisioned', 'Deprovisioning'
      attr_accessor :service_provider_provisioning_state

      # @return [Array<ExpressRouteCircuitAuthorization>] The list of
      # authorizations.
      attr_accessor :authorizations

      # @return [Array<ExpressRouteCircuitPeering>] The list of peerings.
      attr_accessor :peerings

      # @return [String] The ServiceKey.
      attr_accessor :service_key

      # @return [String] The ServiceProviderNotes.
      attr_accessor :service_provider_notes

      # @return [ExpressRouteCircuitServiceProviderProperties] The
      # ServiceProviderProperties.
      attr_accessor :service_provider_properties

      # @return [SubResource] The reference to the ExpressRoutePort resource
      # when the circuit is provisioned on an ExpressRoutePort resource.
      attr_accessor :express_route_port

      # @return [Float] The bandwidth of the circuit when the circuit is
      # provisioned on an ExpressRoutePort resource.
      attr_accessor :bandwidth_in_gbps

      # @return [Integer] The identifier of the circuit traffic. Outer tag for
      # QinQ encapsulation.
      attr_accessor :stag

      # @return [String] Gets the provisioning state of the public IP resource.
      # Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] The GatewayManager Etag.
      attr_accessor :gateway_manager_etag

      # @return [Boolean] Flag to enable Global Reach on the circuit.
      attr_accessor :allow_global_reach

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated.
      attr_accessor :etag


      #
      # Mapper for ExpressRouteCircuit class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteCircuit',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuit',
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
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'ExpressRouteCircuitSku'
                }
              },
              allow_classic_operations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowClassicOperations',
                type: {
                  name: 'Boolean'
                }
              },
              circuit_provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.circuitProvisioningState',
                type: {
                  name: 'String'
                }
              },
              service_provider_provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceProviderProvisioningState',
                type: {
                  name: 'String'
                }
              },
              authorizations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.authorizations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ExpressRouteCircuitAuthorizationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressRouteCircuitAuthorization'
                      }
                  }
                }
              },
              peerings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peerings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ExpressRouteCircuitPeeringElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressRouteCircuitPeering'
                      }
                  }
                }
              },
              service_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceKey',
                type: {
                  name: 'String'
                }
              },
              service_provider_notes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceProviderNotes',
                type: {
                  name: 'String'
                }
              },
              service_provider_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceProviderProperties',
                type: {
                  name: 'Composite',
                  class_name: 'ExpressRouteCircuitServiceProviderProperties'
                }
              },
              express_route_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.expressRoutePort',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              bandwidth_in_gbps: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.bandwidthInGbps',
                type: {
                  name: 'Double'
                }
              },
              stag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.stag',
                type: {
                  name: 'Number'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
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
              allow_global_reach: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowGlobalReach',
                type: {
                  name: 'Boolean'
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
