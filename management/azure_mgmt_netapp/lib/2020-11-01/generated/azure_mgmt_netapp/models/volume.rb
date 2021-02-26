# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2020_11_01
  module Models
    #
    # Volume resource
    #
    class Volume

      include MsRestAzure

      # @return [String] Resource location
      attr_accessor :location

      # @return [String] Resource Id
      attr_accessor :id

      # @return [String] Resource name
      attr_accessor :name

      # @return [String] Resource type
      attr_accessor :type

      # @return [Hash{String => String}] Resource tags
      attr_accessor :tags

      # @return [String] FileSystem ID. Unique FileSystem Identifier.
      attr_accessor :file_system_id

      # @return [String] Creation Token or File Path. A unique file path for
      # the volume. Used when creating mount targets
      attr_accessor :creation_token

      # @return [ServiceLevel] serviceLevel. The service level of the file
      # system. Possible values include: 'Standard', 'Premium', 'Ultra'.
      # Default value: 'Premium' .
      attr_accessor :service_level

      # @return [Integer] usageThreshold. Maximum storage quota allowed for a
      # file system in bytes. This is a soft quota used for alerting only.
      # Minimum size is 100 GiB. Upper limit is 100TiB. Specified in bytes.
      # Default value: 107374182400 .
      attr_accessor :usage_threshold

      # @return [VolumePropertiesExportPolicy] exportPolicy. Set of export
      # policy rules
      attr_accessor :export_policy

      # @return [Array<String>] protocolTypes. Set of protocol types, default
      # NFSv3, CIFS fro SMB protocol
      attr_accessor :protocol_types

      # @return [String] Azure lifecycle management
      attr_accessor :provisioning_state

      # @return [String] Snapshot ID. UUID v4 or resource identifier used to
      # identify the Snapshot.
      attr_accessor :snapshot_id

      # @return [String] Backup ID. UUID v4 or resource identifier used to
      # identify the Backup.
      attr_accessor :backup_id

      # @return [String] Baremetal Tenant ID. Unique Baremetal Tenant
      # Identifier.
      attr_accessor :baremetal_tenant_id

      # @return [String] The Azure Resource URI for a delegated subnet. Must
      # have the delegation Microsoft.NetApp/volumes
      attr_accessor :subnet_id

      # @return [Array<MountTargetProperties>] mountTargets. List of mount
      # targets
      attr_accessor :mount_targets

      # @return [String] What type of volume is this
      attr_accessor :volume_type

      # @return [VolumePropertiesDataProtection] DataProtection. DataProtection
      # type volumes include an object containing details of the replication
      attr_accessor :data_protection

      # @return [Boolean] Restoring
      attr_accessor :is_restoring

      # @return [Boolean] If enabled (true) the volume will contain a read-only
      # snapshot directory which provides access to each of the volume's
      # snapshots (default to true). Default value: true .
      attr_accessor :snapshot_directory_visible

      # @return [Boolean] Describe if a volume is KerberosEnabled. To be use
      # with swagger version 2020-05-01 or later. Default value: false .
      attr_accessor :kerberos_enabled

      # @return [SecurityStyle] The security style of volume, default unix,
      # defaults to ntfs for dual protocol or CIFS protocol. Possible values
      # include: 'ntfs', 'unix'. Default value: 'unix' .
      attr_accessor :security_style

      # @return [Boolean] Enables encryption for in-flight smb3 data. Only
      # applicable for SMB/DualProtocol volume. To be used with swagger version
      # 2020-08-01 or later. Default value: false .
      attr_accessor :smb_encryption

      # @return [Boolean] Enables continuously available share property for smb
      # volume. Only applicable for SMB volume. Default value: false .
      attr_accessor :smb_continuously_available

      # @return [Float] Maximum throughput in Mibps that can be achieved by
      # this volume. . Default value: 0 .
      attr_accessor :throughput_mibps

      # @return [String] Encryption Key Source. Possible values are:
      # 'Microsoft.NetApp'
      attr_accessor :encryption_key_source


      #
      # Mapper for Volume class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'volume',
          type: {
            name: 'Composite',
            class_name: 'Volume',
            model_properties: {
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
              file_system_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.fileSystemId',
                constraints: {
                  MaxLength: 36,
                  MinLength: 36,
                  Pattern: '^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$'
                },
                type: {
                  name: 'String'
                }
              },
              creation_token: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.creationToken',
                constraints: {
                  MaxLength: 80,
                  MinLength: 1,
                  Pattern: '^[a-zA-Z][a-zA-Z0-9\-]{0,79}$'
                },
                type: {
                  name: 'String'
                }
              },
              service_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceLevel',
                default_value: 'Premium',
                type: {
                  name: 'String'
                }
              },
              usage_threshold: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.usageThreshold',
                default_value: 107374182400,
                constraints: {
                  InclusiveMaximum: 109951162777600,
                  InclusiveMinimum: 107374182400
                },
                type: {
                  name: 'Number'
                }
              },
              export_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.exportPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'VolumePropertiesExportPolicy'
                }
              },
              protocol_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.protocolTypes',
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
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              snapshot_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.snapshotId',
                constraints: {
                  MaxLength: 36,
                  MinLength: 36,
                  Pattern: '^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}|(\\?([^\/]*[\/])*)([^\/]+)$'
                },
                type: {
                  name: 'String'
                }
              },
              backup_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.backupId',
                constraints: {
                  MaxLength: 36,
                  MinLength: 36,
                  Pattern: '^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}|(\\?([^\/]*[\/])*)([^\/]+)$'
                },
                type: {
                  name: 'String'
                }
              },
              baremetal_tenant_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.baremetalTenantId',
                type: {
                  name: 'String'
                }
              },
              subnet_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.subnetId',
                type: {
                  name: 'String'
                }
              },
              mount_targets: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.mountTargets',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MountTargetPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MountTargetProperties'
                      }
                  }
                }
              },
              volume_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.volumeType',
                type: {
                  name: 'String'
                }
              },
              data_protection: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dataProtection',
                type: {
                  name: 'Composite',
                  class_name: 'VolumePropertiesDataProtection'
                }
              },
              is_restoring: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isRestoring',
                type: {
                  name: 'Boolean'
                }
              },
              snapshot_directory_visible: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.snapshotDirectoryVisible',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              },
              kerberos_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.kerberosEnabled',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              security_style: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.securityStyle',
                default_value: 'unix',
                type: {
                  name: 'String'
                }
              },
              smb_encryption: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.smbEncryption',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              smb_continuously_available: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.smbContinuouslyAvailable',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              throughput_mibps: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.throughputMibps',
                default_value: 0,
                constraints: {
                  InclusiveMaximum: 4500,
                  InclusiveMinimum: 0,
                  MultipleOf: 0.001
                },
                type: {
                  name: 'Double'
                }
              },
              encryption_key_source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.encryptionKeySource',
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
