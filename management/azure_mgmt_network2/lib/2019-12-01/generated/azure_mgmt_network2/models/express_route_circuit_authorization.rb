# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network2::Mgmt::V2019_12_01
  module Models
    #
    # Authorization in an ExpressRouteCircuit resource.
    #
    class ExpressRouteCircuitAuthorization < SubResource

      include MsRestAzure2

      # @return [String] The authorization key.
      attr_accessor :authorization_key

      # @return [AuthorizationUseStatus] The authorization use status. Possible
      # values include: 'Available', 'InUse'
      attr_accessor :authorization_use_status

      # @return [ProvisioningState] The provisioning state of the authorization
      # resource. Possible values include: 'Succeeded', 'Updating', 'Deleting',
      # 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Type of the resource.
      attr_accessor :type


      #
      # Mapper for ExpressRouteCircuitAuthorization class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteCircuitAuthorization',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitAuthorization',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              authorization_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.authorizationKey',
                type: {
                  name: 'String'
                }
              },
              authorization_use_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.authorizationUseStatus',
                type: {
                  name: 'String'
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
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
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
