# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PolicyInsights::Mgmt::V2018_07_01_preview
  module Models
    #
    # Policy tracked resource record.
    #
    class PolicyTrackedResource

      include MsRestAzure

      # @return [String] The ID of the policy tracked resource.
      attr_accessor :tracked_resource_id

      # @return [PolicyDetails] The details of the policy that require the
      # tracked resource.
      attr_accessor :policy_details

      # @return [TrackedResourceModificationDetails] The details of the policy
      # triggered deployment that created the tracked resource.
      attr_accessor :created_by

      # @return [TrackedResourceModificationDetails] The details of the policy
      # triggered deployment that modified the tracked resource.
      attr_accessor :last_modified_by

      # @return [DateTime] Timestamp of the last update to the tracked
      # resource.
      attr_accessor :last_update_utc


      #
      # Mapper for PolicyTrackedResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicyTrackedResource',
          type: {
            name: 'Composite',
            class_name: 'PolicyTrackedResource',
            model_properties: {
              tracked_resource_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'trackedResourceId',
                type: {
                  name: 'String'
                }
              },
              policy_details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'policyDetails',
                type: {
                  name: 'Composite',
                  class_name: 'PolicyDetails'
                }
              },
              created_by: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'createdBy',
                type: {
                  name: 'Composite',
                  class_name: 'TrackedResourceModificationDetails'
                }
              },
              last_modified_by: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lastModifiedBy',
                type: {
                  name: 'Composite',
                  class_name: 'TrackedResourceModificationDetails'
                }
              },
              last_update_utc: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lastUpdateUtc',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end