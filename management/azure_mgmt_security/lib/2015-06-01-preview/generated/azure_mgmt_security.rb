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
require '2015-06-01-preview/generated/azure_mgmt_security/module_definition'
require 'ms_rest_azure'

module Azure::Security::Mgmt::V2015_06_01_preview
  autoload :AdaptiveNetworkHardenings,                          '2015-06-01-preview/generated/azure_mgmt_security/adaptive_network_hardenings.rb'
  autoload :Alerts,                                             '2015-06-01-preview/generated/azure_mgmt_security/alerts.rb'
  autoload :AllowedConnections,                                 '2015-06-01-preview/generated/azure_mgmt_security/allowed_connections.rb'
  autoload :AdaptiveApplicationControls,                        '2015-06-01-preview/generated/azure_mgmt_security/adaptive_application_controls.rb'
  autoload :DiscoveredSecuritySolutions,                        '2015-06-01-preview/generated/azure_mgmt_security/discovered_security_solutions.rb'
  autoload :ExternalSecuritySolutions,                          '2015-06-01-preview/generated/azure_mgmt_security/external_security_solutions.rb'
  autoload :JitNetworkAccessPolicies,                           '2015-06-01-preview/generated/azure_mgmt_security/jit_network_access_policies.rb'
  autoload :Locations,                                          '2015-06-01-preview/generated/azure_mgmt_security/locations.rb'
  autoload :Operations,                                         '2015-06-01-preview/generated/azure_mgmt_security/operations.rb'
  autoload :Tasks,                                              '2015-06-01-preview/generated/azure_mgmt_security/tasks.rb'
  autoload :Topology,                                           '2015-06-01-preview/generated/azure_mgmt_security/topology.rb'
  autoload :SecurityCenter,                                     '2015-06-01-preview/generated/azure_mgmt_security/security_center.rb'

  module Models
    autoload :ExternalSecuritySolutionList,                       '2015-06-01-preview/generated/azure_mgmt_security/models/external_security_solution_list.rb'
    autoload :Rule,                                               '2015-06-01-preview/generated/azure_mgmt_security/models/rule.rb'
    autoload :EffectiveNetworkSecurityGroups,                     '2015-06-01-preview/generated/azure_mgmt_security/models/effective_network_security_groups.rb'
    autoload :SecurityTaskList,                                   '2015-06-01-preview/generated/azure_mgmt_security/models/security_task_list.rb'
    autoload :AdaptiveNetworkHardeningsList,                      '2015-06-01-preview/generated/azure_mgmt_security/models/adaptive_network_hardenings_list.rb'
    autoload :TopologyList,                                       '2015-06-01-preview/generated/azure_mgmt_security/models/topology_list.rb'
    autoload :AdaptiveNetworkHardeningEnforceRequest,             '2015-06-01-preview/generated/azure_mgmt_security/models/adaptive_network_hardening_enforce_request.rb'
    autoload :SecurityTaskParameters,                             '2015-06-01-preview/generated/azure_mgmt_security/models/security_task_parameters.rb'
    autoload :TopologyResource,                                   '2015-06-01-preview/generated/azure_mgmt_security/models/topology_resource.rb'
    autoload :AlertConfidenceReason,                              '2015-06-01-preview/generated/azure_mgmt_security/models/alert_confidence_reason.rb'
    autoload :TopologySingleResource,                             '2015-06-01-preview/generated/azure_mgmt_security/models/topology_single_resource.rb'
    autoload :AlertList,                                          '2015-06-01-preview/generated/azure_mgmt_security/models/alert_list.rb'
    autoload :ConnectedWorkspace,                                 '2015-06-01-preview/generated/azure_mgmt_security/models/connected_workspace.rb'
    autoload :ConnectableResource,                                '2015-06-01-preview/generated/azure_mgmt_security/models/connectable_resource.rb'
    autoload :AadSolutionProperties,                              '2015-06-01-preview/generated/azure_mgmt_security/models/aad_solution_properties.rb'
    autoload :AllowedConnectionsList,                             '2015-06-01-preview/generated/azure_mgmt_security/models/allowed_connections_list.rb'
    autoload :TopologySingleResourceChild,                        '2015-06-01-preview/generated/azure_mgmt_security/models/topology_single_resource_child.rb'
    autoload :AppWhitelistingIssueSummary,                        '2015-06-01-preview/generated/azure_mgmt_security/models/app_whitelisting_issue_summary.rb'
    autoload :ExternalSecuritySolutionKind1,                      '2015-06-01-preview/generated/azure_mgmt_security/models/external_security_solution_kind1.rb'
    autoload :PublisherInfo,                                      '2015-06-01-preview/generated/azure_mgmt_security/models/publisher_info.rb'
    autoload :ExternalSecuritySolutionProperties,                 '2015-06-01-preview/generated/azure_mgmt_security/models/external_security_solution_properties.rb'
    autoload :PathRecommendation,                                 '2015-06-01-preview/generated/azure_mgmt_security/models/path_recommendation.rb'
    autoload :AadConnectivityState1,                              '2015-06-01-preview/generated/azure_mgmt_security/models/aad_connectivity_state1.rb'
    autoload :AppWhitelistingGroups,                              '2015-06-01-preview/generated/azure_mgmt_security/models/app_whitelisting_groups.rb'
    autoload :JitNetworkAccessPortRule,                           '2015-06-01-preview/generated/azure_mgmt_security/models/jit_network_access_port_rule.rb'
    autoload :DiscoveredSecuritySolution,                         '2015-06-01-preview/generated/azure_mgmt_security/models/discovered_security_solution.rb'
    autoload :JitNetworkAccessPolicyVirtualMachine,               '2015-06-01-preview/generated/azure_mgmt_security/models/jit_network_access_policy_virtual_machine.rb'
    autoload :ExternalSecuritySolution,                           '2015-06-01-preview/generated/azure_mgmt_security/models/external_security_solution.rb'
    autoload :JitNetworkAccessRequestPort,                        '2015-06-01-preview/generated/azure_mgmt_security/models/jit_network_access_request_port.rb'
    autoload :Resource,                                           '2015-06-01-preview/generated/azure_mgmt_security/models/resource.rb'
    autoload :JitNetworkAccessRequestVirtualMachine,              '2015-06-01-preview/generated/azure_mgmt_security/models/jit_network_access_request_virtual_machine.rb'
    autoload :TopologySingleResourceParent,                       '2015-06-01-preview/generated/azure_mgmt_security/models/topology_single_resource_parent.rb'
    autoload :JitNetworkAccessRequest,                            '2015-06-01-preview/generated/azure_mgmt_security/models/jit_network_access_request.rb'
    autoload :AllowedConnectionsResource,                         '2015-06-01-preview/generated/azure_mgmt_security/models/allowed_connections_resource.rb'
    autoload :JitNetworkAccessPolicy,                             '2015-06-01-preview/generated/azure_mgmt_security/models/jit_network_access_policy.rb'
    autoload :VmRecommendation,                                   '2015-06-01-preview/generated/azure_mgmt_security/models/vm_recommendation.rb'
    autoload :JitNetworkAccessPoliciesList,                       '2015-06-01-preview/generated/azure_mgmt_security/models/jit_network_access_policies_list.rb'
    autoload :AppWhitelistingGroup,                               '2015-06-01-preview/generated/azure_mgmt_security/models/app_whitelisting_group.rb'
    autoload :JitNetworkAccessPolicyInitiatePort,                 '2015-06-01-preview/generated/azure_mgmt_security/models/jit_network_access_policy_initiate_port.rb'
    autoload :DiscoveredSecuritySolutionList,                     '2015-06-01-preview/generated/azure_mgmt_security/models/discovered_security_solution_list.rb'
    autoload :JitNetworkAccessPolicyInitiateVirtualMachine,       '2015-06-01-preview/generated/azure_mgmt_security/models/jit_network_access_policy_initiate_virtual_machine.rb'
    autoload :AlertEntity,                                        '2015-06-01-preview/generated/azure_mgmt_security/models/alert_entity.rb'
    autoload :JitNetworkAccessPolicyInitiateRequest,              '2015-06-01-preview/generated/azure_mgmt_security/models/jit_network_access_policy_initiate_request.rb'
    autoload :Location,                                           '2015-06-01-preview/generated/azure_mgmt_security/models/location.rb'
    autoload :Kind,                                               '2015-06-01-preview/generated/azure_mgmt_security/models/kind.rb'
    autoload :AppWhitelistingPutGroupData,                        '2015-06-01-preview/generated/azure_mgmt_security/models/app_whitelisting_put_group_data.rb'
    autoload :AscLocationList,                                    '2015-06-01-preview/generated/azure_mgmt_security/models/asc_location_list.rb'
    autoload :ConnectedResource,                                  '2015-06-01-preview/generated/azure_mgmt_security/models/connected_resource.rb'
    autoload :OperationDisplay,                                   '2015-06-01-preview/generated/azure_mgmt_security/models/operation_display.rb'
    autoload :OperationList,                                      '2015-06-01-preview/generated/azure_mgmt_security/models/operation_list.rb'
    autoload :UserRecommendation,                                 '2015-06-01-preview/generated/azure_mgmt_security/models/user_recommendation.rb'
    autoload :Operation,                                          '2015-06-01-preview/generated/azure_mgmt_security/models/operation.rb'
    autoload :AdaptiveNetworkHardening,                           '2015-06-01-preview/generated/azure_mgmt_security/models/adaptive_network_hardening.rb'
    autoload :AscLocation,                                        '2015-06-01-preview/generated/azure_mgmt_security/models/asc_location.rb'
    autoload :Alert,                                              '2015-06-01-preview/generated/azure_mgmt_security/models/alert.rb'
    autoload :CefSolutionProperties,                              '2015-06-01-preview/generated/azure_mgmt_security/models/cef_solution_properties.rb'
    autoload :CefExternalSecuritySolution,                        '2015-06-01-preview/generated/azure_mgmt_security/models/cef_external_security_solution.rb'
    autoload :AtaSolutionProperties,                              '2015-06-01-preview/generated/azure_mgmt_security/models/ata_solution_properties.rb'
    autoload :AtaExternalSecuritySolution,                        '2015-06-01-preview/generated/azure_mgmt_security/models/ata_external_security_solution.rb'
    autoload :AadExternalSecuritySolution,                        '2015-06-01-preview/generated/azure_mgmt_security/models/aad_external_security_solution.rb'
    autoload :SecurityTask,                                       '2015-06-01-preview/generated/azure_mgmt_security/models/security_task.rb'
    autoload :Direction,                                          '2015-06-01-preview/generated/azure_mgmt_security/models/direction.rb'
    autoload :TransportProtocol,                                  '2015-06-01-preview/generated/azure_mgmt_security/models/transport_protocol.rb'
    autoload :ReportedSeverity,                                   '2015-06-01-preview/generated/azure_mgmt_security/models/reported_severity.rb'
    autoload :SecurityFamily,                                     '2015-06-01-preview/generated/azure_mgmt_security/models/security_family.rb'
    autoload :AadConnectivityState,                               '2015-06-01-preview/generated/azure_mgmt_security/models/aad_connectivity_state.rb'
    autoload :ExternalSecuritySolutionKind,                       '2015-06-01-preview/generated/azure_mgmt_security/models/external_security_solution_kind.rb'
    autoload :Protocol,                                           '2015-06-01-preview/generated/azure_mgmt_security/models/protocol.rb'
    autoload :Status,                                             '2015-06-01-preview/generated/azure_mgmt_security/models/status.rb'
    autoload :StatusReason,                                       '2015-06-01-preview/generated/azure_mgmt_security/models/status_reason.rb'
    autoload :ConnectionType,                                     '2015-06-01-preview/generated/azure_mgmt_security/models/connection_type.rb'
  end
end