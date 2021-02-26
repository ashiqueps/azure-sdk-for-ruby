# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2020_11_01
  module Models
    #
    # Active Directory
    #
    class ActiveDirectory

      include MsRestAzure

      # @return [String] Id of the Active Directory
      attr_accessor :active_directory_id

      # @return [String] Username of Active Directory domain administrator
      attr_accessor :username

      # @return [String] Plain text password of Active Directory domain
      # administrator, value is masked in the response
      attr_accessor :password

      # @return [String] Name of the Active Directory domain
      attr_accessor :domain

      # @return [String] Comma separated list of DNS server IP addresses (IPv4
      # only) for the Active Directory domain
      attr_accessor :dns

      # @return [ActiveDirectoryStatus] Status of the Active Directory.
      # Possible values include: 'Created', 'InUse', 'Deleted', 'Error',
      # 'Updating'
      attr_accessor :status

      # @return [String] Any details in regards to the Status of the Active
      # Directory
      attr_accessor :status_details

      # @return [String] NetBIOS name of the SMB server. This name will be
      # registered as a computer account in the AD and used to mount volumes
      attr_accessor :smb_server_name

      # @return [String] The Organizational Unit (OU) within the Windows Active
      # Directory. Default value: 'CN=Computers' .
      attr_accessor :organizational_unit

      # @return [String] The Active Directory site the service will limit
      # Domain Controller discovery to
      attr_accessor :site

      # @return [Array<String>] Users to be added to the Built-in Backup
      # Operator active directory group. A list of unique usernames without
      # domain specifier
      attr_accessor :backup_operators

      # @return [String] kdc server IP addresses for the active directory
      # machine. This optional parameter is used only while creating kerberos
      # volume.
      attr_accessor :kdc_ip

      # @return [String] Name of the active directory machine. This optional
      # parameter is used only while creating kerberos volume
      attr_accessor :ad_name

      # @return [String] When LDAP over SSL/TLS is enabled, the LDAP client is
      # required to have base64 encoded Active Directory Certificate Service's
      # self-signed root CA certificate, this optional parameter is used only
      # for dual protocol with LDAP user-mapping volumes.
      attr_accessor :server_root_cacertificate

      # @return [Boolean] If enabled, AES encryption will be enabled for SMB
      # communication.
      attr_accessor :aes_encryption

      # @return [Boolean] Specifies whether or not the LDAP traffic needs to be
      # signed.
      attr_accessor :ldap_signing

      # @return [Array<String>] Domain Users in the Active directory to be
      # given SeSecurityPrivilege privilege (Needed for SMB Continuously
      # available shares for SQL). A list of unique usernames without domain
      # specifier
      attr_accessor :security_operators

      # @return [Boolean] Specifies whether or not the LDAP traffic needs to be
      # secured via TLS.
      attr_accessor :ldap_over_tls


      #
      # Mapper for ActiveDirectory class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'activeDirectory',
          type: {
            name: 'Composite',
            class_name: 'ActiveDirectory',
            model_properties: {
              active_directory_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activeDirectoryId',
                type: {
                  name: 'String'
                }
              },
              username: {
                client_side_validation: true,
                required: false,
                serialized_name: 'username',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'password',
                type: {
                  name: 'String'
                }
              },
              domain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'domain',
                type: {
                  name: 'String'
                }
              },
              dns: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dns',
                constraints: {
                  Pattern: '^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)((, ?)(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?))*$'
                },
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              status_details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'statusDetails',
                type: {
                  name: 'String'
                }
              },
              smb_server_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'smbServerName',
                type: {
                  name: 'String'
                }
              },
              organizational_unit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'organizationalUnit',
                default_value: 'CN=Computers',
                type: {
                  name: 'String'
                }
              },
              site: {
                client_side_validation: true,
                required: false,
                serialized_name: 'site',
                type: {
                  name: 'String'
                }
              },
              backup_operators: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupOperators',
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
              kdc_ip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kdcIP',
                constraints: {
                  Pattern: '^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)((, ?)(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?))*$'
                },
                type: {
                  name: 'String'
                }
              },
              ad_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'adName',
                constraints: {
                  MaxLength: 64,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              server_root_cacertificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serverRootCACertificate',
                constraints: {
                  MaxLength: 10240,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              aes_encryption: {
                client_side_validation: true,
                required: false,
                serialized_name: 'aesEncryption',
                type: {
                  name: 'Boolean'
                }
              },
              ldap_signing: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ldapSigning',
                type: {
                  name: 'Boolean'
                }
              },
              security_operators: {
                client_side_validation: true,
                required: false,
                serialized_name: 'securityOperators',
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
              ldap_over_tls: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ldapOverTLS',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
