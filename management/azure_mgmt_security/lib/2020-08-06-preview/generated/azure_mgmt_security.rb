# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2020-08-06-preview/generated/azure_mgmt_security/module_definition'
require 'ms_rest_azure'

module Azure::Security::Mgmt::V2020_08_06_preview
  autoload :IotDefenderSettings,                                '2020-08-06-preview/generated/azure_mgmt_security/iot_defender_settings.rb'
  autoload :IotSensors,                                         '2020-08-06-preview/generated/azure_mgmt_security/iot_sensors.rb'
  autoload :DevicesForSubscription,                             '2020-08-06-preview/generated/azure_mgmt_security/devices_for_subscription.rb'
  autoload :DevicesForHub,                                      '2020-08-06-preview/generated/azure_mgmt_security/devices_for_hub.rb'
  autoload :DeviceOperations,                                   '2020-08-06-preview/generated/azure_mgmt_security/device_operations.rb'
  autoload :OnPremiseIotSensors,                                '2020-08-06-preview/generated/azure_mgmt_security/on_premise_iot_sensors.rb'
  autoload :IotAlerts,                                          '2020-08-06-preview/generated/azure_mgmt_security/iot_alerts.rb'
  autoload :IotAlertTypes,                                      '2020-08-06-preview/generated/azure_mgmt_security/iot_alert_types.rb'
  autoload :IotRecommendations,                                 '2020-08-06-preview/generated/azure_mgmt_security/iot_recommendations.rb'
  autoload :IotRecommendationTypes,                             '2020-08-06-preview/generated/azure_mgmt_security/iot_recommendation_types.rb'
  autoload :SecurityCenter,                                     '2020-08-06-preview/generated/azure_mgmt_security/security_center.rb'

  module Models
    autoload :Tags,                                               '2020-08-06-preview/generated/azure_mgmt_security/models/tags.rb'
    autoload :Resource,                                           '2020-08-06-preview/generated/azure_mgmt_security/models/resource.rb'
    autoload :IotDefenderSettingsList,                            '2020-08-06-preview/generated/azure_mgmt_security/models/iot_defender_settings_list.rb'
    autoload :PackageDownloadsSensorFullOvf,                      '2020-08-06-preview/generated/azure_mgmt_security/models/package_downloads_sensor_full_ovf.rb'
    autoload :IotRecommendationTypeList,                          '2020-08-06-preview/generated/azure_mgmt_security/models/iot_recommendation_type_list.rb'
    autoload :PackageDownloadsSensor,                             '2020-08-06-preview/generated/azure_mgmt_security/models/package_downloads_sensor.rb'
    autoload :IotSensorsList,                                     '2020-08-06-preview/generated/azure_mgmt_security/models/iot_sensors_list.rb'
    autoload :PackageDownloadsCentralManagerFull,                 '2020-08-06-preview/generated/azure_mgmt_security/models/package_downloads_central_manager_full.rb'
    autoload :IpAddress,                                          '2020-08-06-preview/generated/azure_mgmt_security/models/ip_address.rb'
    autoload :PackageDownloadsThreatIntelligence,                 '2020-08-06-preview/generated/azure_mgmt_security/models/package_downloads_threat_intelligence.rb'
    autoload :MacAddress,                                         '2020-08-06-preview/generated/azure_mgmt_security/models/mac_address.rb'
    autoload :IotAlertListModel,                                  '2020-08-06-preview/generated/azure_mgmt_security/models/iot_alert_list_model.rb'
    autoload :TrackedResource,                                    '2020-08-06-preview/generated/azure_mgmt_security/models/tracked_resource.rb'
    autoload :NetworkInterface,                                   '2020-08-06-preview/generated/azure_mgmt_security/models/network_interface.rb'
    autoload :Kind,                                               '2020-08-06-preview/generated/azure_mgmt_security/models/kind.rb'
    autoload :Protocol,                                           '2020-08-06-preview/generated/azure_mgmt_security/models/protocol.rb'
    autoload :IotAlertModel,                                      '2020-08-06-preview/generated/azure_mgmt_security/models/iot_alert_model.rb'
    autoload :PackageDownloadInfo,                                '2020-08-06-preview/generated/azure_mgmt_security/models/package_download_info.rb'
    autoload :Firmware,                                           '2020-08-06-preview/generated/azure_mgmt_security/models/firmware.rb'
    autoload :PackageDownloadsCentralManagerFullOvf,              '2020-08-06-preview/generated/azure_mgmt_security/models/package_downloads_central_manager_full_ovf.rb'
    autoload :Sensor,                                             '2020-08-06-preview/generated/azure_mgmt_security/models/sensor.rb'
    autoload :PackageDownloads,                                   '2020-08-06-preview/generated/azure_mgmt_security/models/package_downloads.rb'
    autoload :Site,                                               '2020-08-06-preview/generated/azure_mgmt_security/models/site.rb'
    autoload :ETag,                                               '2020-08-06-preview/generated/azure_mgmt_security/models/etag.rb'
    autoload :IotRecommendationListModel,                         '2020-08-06-preview/generated/azure_mgmt_security/models/iot_recommendation_list_model.rb'
    autoload :PackageDownloadsCentralManager,                     '2020-08-06-preview/generated/azure_mgmt_security/models/package_downloads_central_manager.rb'
    autoload :DeviceList,                                         '2020-08-06-preview/generated/azure_mgmt_security/models/device_list.rb'
    autoload :PackageDownloadsSensorFull,                         '2020-08-06-preview/generated/azure_mgmt_security/models/package_downloads_sensor_full.rb'
    autoload :IotAlertTypeList,                                   '2020-08-06-preview/generated/azure_mgmt_security/models/iot_alert_type_list.rb'
    autoload :AzureTrackedResourceLocation,                       '2020-08-06-preview/generated/azure_mgmt_security/models/azure_tracked_resource_location.rb'
    autoload :OnPremiseIotSensorsList,                            '2020-08-06-preview/generated/azure_mgmt_security/models/on_premise_iot_sensors_list.rb'
    autoload :IotDefenderSettingsModel,                           '2020-08-06-preview/generated/azure_mgmt_security/models/iot_defender_settings_model.rb'
    autoload :AscLocation,                                        '2020-08-06-preview/generated/azure_mgmt_security/models/asc_location.rb'
    autoload :IotSensor,                                          '2020-08-06-preview/generated/azure_mgmt_security/models/iot_sensor.rb'
    autoload :Device,                                             '2020-08-06-preview/generated/azure_mgmt_security/models/device.rb'
    autoload :OnPremiseIotSensor,                                 '2020-08-06-preview/generated/azure_mgmt_security/models/on_premise_iot_sensor.rb'
    autoload :IotAlertType,                                       '2020-08-06-preview/generated/azure_mgmt_security/models/iot_alert_type.rb'
    autoload :IotRecommendationModel,                             '2020-08-06-preview/generated/azure_mgmt_security/models/iot_recommendation_model.rb'
    autoload :IotRecommendationType,                              '2020-08-06-preview/generated/azure_mgmt_security/models/iot_recommendation_type.rb'
    autoload :VersionKind,                                        '2020-08-06-preview/generated/azure_mgmt_security/models/version_kind.rb'
    autoload :MacSignificance,                                    '2020-08-06-preview/generated/azure_mgmt_security/models/mac_significance.rb'
    autoload :RelationToIpStatus,                                 '2020-08-06-preview/generated/azure_mgmt_security/models/relation_to_ip_status.rb'
    autoload :ManagementState,                                    '2020-08-06-preview/generated/azure_mgmt_security/models/management_state.rb'
    autoload :AuthorizationState,                                 '2020-08-06-preview/generated/azure_mgmt_security/models/authorization_state.rb'
    autoload :DeviceCriticality,                                  '2020-08-06-preview/generated/azure_mgmt_security/models/device_criticality.rb'
    autoload :PurdueLevel,                                        '2020-08-06-preview/generated/azure_mgmt_security/models/purdue_level.rb'
    autoload :ProgrammingState,                                   '2020-08-06-preview/generated/azure_mgmt_security/models/programming_state.rb'
    autoload :ScanningFunctionality,                              '2020-08-06-preview/generated/azure_mgmt_security/models/scanning_functionality.rb'
    autoload :DeviceStatus,                                       '2020-08-06-preview/generated/azure_mgmt_security/models/device_status.rb'
    autoload :AlertSeverity,                                      '2020-08-06-preview/generated/azure_mgmt_security/models/alert_severity.rb'
    autoload :AlertIntent,                                        '2020-08-06-preview/generated/azure_mgmt_security/models/alert_intent.rb'
    autoload :RecommendationSeverity,                             '2020-08-06-preview/generated/azure_mgmt_security/models/recommendation_severity.rb'
  end
end