# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Container with items backed up using MAB backup engine.
    #
    class MabContainer < ProtectionContainer

      include MsRestAzure


      def initialize
        @protectableObjectType = "MABWindowsContainer"
      end

      attr_accessor :protectableObjectType

      # @return [Boolean] Can the container be registered one more time.
      attr_accessor :can_re_register

      # @return [Integer] ContainerID represents the container.
      attr_accessor :container_id

      # @return [Integer] Number of items backed up in this container.
      attr_accessor :protected_item_count

      # @return [String] Agent version of this container.
      attr_accessor :agent_version

      # @return [MabContainerExtendedInfo] Additional information for this
      # container
      attr_accessor :extended_info


      #
      # Mapper for MabContainer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MABWindowsContainer',
          type: {
            name: 'Composite',
            class_name: 'MabContainer',
            model_properties: {
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              registration_status: {
                required: false,
                serialized_name: 'registrationStatus',
                type: {
                  name: 'String'
                }
              },
              health_status: {
                required: false,
                serialized_name: 'healthStatus',
                type: {
                  name: 'String'
                }
              },
              container_type: {
                required: false,
                read_only: true,
                serialized_name: 'containerType',
                type: {
                  name: 'String'
                }
              },
              protectableObjectType: {
                required: true,
                serialized_name: 'protectableObjectType',
                type: {
                  name: 'String'
                }
              },
              can_re_register: {
                required: false,
                serialized_name: 'canReRegister',
                type: {
                  name: 'Boolean'
                }
              },
              container_id: {
                required: false,
                serialized_name: 'containerId',
                type: {
                  name: 'Number'
                }
              },
              protected_item_count: {
                required: false,
                serialized_name: 'protectedItemCount',
                type: {
                  name: 'Number'
                }
              },
              agent_version: {
                required: false,
                serialized_name: 'agentVersion',
                type: {
                  name: 'String'
                }
              },
              extended_info: {
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'MabContainerExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end