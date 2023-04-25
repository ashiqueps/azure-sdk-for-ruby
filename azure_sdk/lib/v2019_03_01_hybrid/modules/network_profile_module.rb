# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_network2'

module Azure::Profiles::V2019_03_01_Hybrid
  module Network
    module Mgmt
      ApplicationGateways = Azure::Network2::Mgmt::V2017_10_01::ApplicationGateways
      ApplicationSecurityGroups = Azure::Network2::Mgmt::V2017_10_01::ApplicationSecurityGroups
      AvailableEndpointServices = Azure::Network2::Mgmt::V2017_10_01::AvailableEndpointServices
      ExpressRouteCircuitAuthorizations = Azure::Network2::Mgmt::V2017_10_01::ExpressRouteCircuitAuthorizations
      ExpressRouteCircuitPeerings = Azure::Network2::Mgmt::V2017_10_01::ExpressRouteCircuitPeerings
      ExpressRouteCircuits = Azure::Network2::Mgmt::V2017_10_01::ExpressRouteCircuits
      ExpressRouteServiceProviders = Azure::Network2::Mgmt::V2017_10_01::ExpressRouteServiceProviders
      LoadBalancers = Azure::Network2::Mgmt::V2017_10_01::LoadBalancers
      LoadBalancerBackendAddressPools = Azure::Network2::Mgmt::V2017_10_01::LoadBalancerBackendAddressPools
      LoadBalancerFrontendIPConfigurations = Azure::Network2::Mgmt::V2017_10_01::LoadBalancerFrontendIPConfigurations
      InboundNatRules = Azure::Network2::Mgmt::V2017_10_01::InboundNatRules
      LoadBalancerLoadBalancingRules = Azure::Network2::Mgmt::V2017_10_01::LoadBalancerLoadBalancingRules
      LoadBalancerNetworkInterfaces = Azure::Network2::Mgmt::V2017_10_01::LoadBalancerNetworkInterfaces
      LoadBalancerProbes = Azure::Network2::Mgmt::V2017_10_01::LoadBalancerProbes
      NetworkInterfaces = Azure::Network2::Mgmt::V2017_10_01::NetworkInterfaces
      NetworkInterfaceIPConfigurations = Azure::Network2::Mgmt::V2017_10_01::NetworkInterfaceIPConfigurations
      NetworkInterfaceLoadBalancers = Azure::Network2::Mgmt::V2017_10_01::NetworkInterfaceLoadBalancers
      NetworkSecurityGroups = Azure::Network2::Mgmt::V2017_10_01::NetworkSecurityGroups
      SecurityRules = Azure::Network2::Mgmt::V2017_10_01::SecurityRules
      DefaultSecurityRules = Azure::Network2::Mgmt::V2017_10_01::DefaultSecurityRules
      NetworkWatchers = Azure::Network2::Mgmt::V2017_10_01::NetworkWatchers
      PacketCaptures = Azure::Network2::Mgmt::V2017_10_01::PacketCaptures
      ConnectionMonitors = Azure::Network2::Mgmt::V2017_10_01::ConnectionMonitors
      Operations = Azure::Network2::Mgmt::V2017_10_01::Operations
      PublicIPAddresses = Azure::Network2::Mgmt::V2017_10_01::PublicIPAddresses
      RouteFilters = Azure::Network2::Mgmt::V2017_10_01::RouteFilters
      RouteFilterRules = Azure::Network2::Mgmt::V2017_10_01::RouteFilterRules
      RouteTables = Azure::Network2::Mgmt::V2017_10_01::RouteTables
      Routes = Azure::Network2::Mgmt::V2017_10_01::Routes
      BgpServiceCommunities = Azure::Network2::Mgmt::V2017_10_01::BgpServiceCommunities
      Usages = Azure::Network2::Mgmt::V2017_10_01::Usages
      VirtualNetworks = Azure::Network2::Mgmt::V2017_10_01::VirtualNetworks
      Subnets = Azure::Network2::Mgmt::V2017_10_01::Subnets
      VirtualNetworkPeerings = Azure::Network2::Mgmt::V2017_10_01::VirtualNetworkPeerings
      VirtualNetworkGateways = Azure::Network2::Mgmt::V2017_10_01::VirtualNetworkGateways
      VirtualNetworkGatewayConnections = Azure::Network2::Mgmt::V2017_10_01::VirtualNetworkGatewayConnections
      LocalNetworkGateways = Azure::Network2::Mgmt::V2017_10_01::LocalNetworkGateways

      module Models
        TopologyAssociation = Azure::Network2::Mgmt::V2017_10_01::Models::TopologyAssociation
        SubResource = Azure::Network2::Mgmt::V2017_10_01::Models::SubResource
        TopologyResource = Azure::Network2::Mgmt::V2017_10_01::Models::TopologyResource
        OperationListResult = Azure::Network2::Mgmt::V2017_10_01::Models::OperationListResult
        Operation = Azure::Network2::Mgmt::V2017_10_01::Models::Operation
        NetworkInterfaceDnsSettings = Azure::Network2::Mgmt::V2017_10_01::Models::NetworkInterfaceDnsSettings
        OperationPropertiesFormatServiceSpecification = Azure::Network2::Mgmt::V2017_10_01::Models::OperationPropertiesFormatServiceSpecification
        VirtualNetworkConnectionGatewayReference = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkConnectionGatewayReference
        LoadBalancerListResult = Azure::Network2::Mgmt::V2017_10_01::Models::LoadBalancerListResult
        ConnectionSharedKey = Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionSharedKey
        InboundNatRuleListResult = Azure::Network2::Mgmt::V2017_10_01::Models::InboundNatRuleListResult
        PublicIPAddressSku = Azure::Network2::Mgmt::V2017_10_01::Models::PublicIPAddressSku
        LoadBalancerBackendAddressPoolListResult = Azure::Network2::Mgmt::V2017_10_01::Models::LoadBalancerBackendAddressPoolListResult
        ConnectionResetSharedKey = Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionResetSharedKey
        LoadBalancerFrontendIPConfigurationListResult = Azure::Network2::Mgmt::V2017_10_01::Models::LoadBalancerFrontendIPConfigurationListResult
        IpsecPolicy = Azure::Network2::Mgmt::V2017_10_01::Models::IpsecPolicy
        LoadBalancerLoadBalancingRuleListResult = Azure::Network2::Mgmt::V2017_10_01::Models::LoadBalancerLoadBalancingRuleListResult
        GatewayRouteListResult = Azure::Network2::Mgmt::V2017_10_01::Models::GatewayRouteListResult
        LoadBalancerProbeListResult = Azure::Network2::Mgmt::V2017_10_01::Models::LoadBalancerProbeListResult
        BgpPeerStatusListResult = Azure::Network2::Mgmt::V2017_10_01::Models::BgpPeerStatusListResult
        NetworkInterfaceListResult = Azure::Network2::Mgmt::V2017_10_01::Models::NetworkInterfaceListResult
        VirtualNetworkGatewayListResult = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayListResult
        ErrorDetails = Azure::Network2::Mgmt::V2017_10_01::Models::ErrorDetails
        ApplicationGatewayBackendHealthHttpSettings = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealthHttpSettings
        Error = Azure::Network2::Mgmt::V2017_10_01::Models::Error
        ApplicationGatewayBackendHealth = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealth
        AzureAsyncOperationResult = Azure::Network2::Mgmt::V2017_10_01::Models::AzureAsyncOperationResult
        ApplicationGatewaySslPolicy = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewaySslPolicy
        NetworkInterfaceIPConfigurationListResult = Azure::Network2::Mgmt::V2017_10_01::Models::NetworkInterfaceIPConfigurationListResult
        GatewayRoute = Azure::Network2::Mgmt::V2017_10_01::Models::GatewayRoute
        NetworkInterfaceLoadBalancerListResult = Azure::Network2::Mgmt::V2017_10_01::Models::NetworkInterfaceLoadBalancerListResult
        BgpSettings = Azure::Network2::Mgmt::V2017_10_01::Models::BgpSettings
        EffectiveNetworkSecurityGroupAssociation = Azure::Network2::Mgmt::V2017_10_01::Models::EffectiveNetworkSecurityGroupAssociation
        VirtualNetworkGatewaySku = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewaySku
        EffectiveNetworkSecurityRule = Azure::Network2::Mgmt::V2017_10_01::Models::EffectiveNetworkSecurityRule
        ApplicationGatewayProbeHealthResponseMatch = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayProbeHealthResponseMatch
        EffectiveNetworkSecurityGroup = Azure::Network2::Mgmt::V2017_10_01::Models::EffectiveNetworkSecurityGroup
        VirtualNetworkUsageName = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkUsageName
        EffectiveNetworkSecurityGroupListResult = Azure::Network2::Mgmt::V2017_10_01::Models::EffectiveNetworkSecurityGroupListResult
        VirtualNetworkListResult = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkListResult
        EffectiveRoute = Azure::Network2::Mgmt::V2017_10_01::Models::EffectiveRoute
        ApplicationGatewayWebApplicationFirewallConfiguration = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
        EffectiveRouteListResult = Azure::Network2::Mgmt::V2017_10_01::Models::EffectiveRouteListResult
        ApplicationGatewayListResult = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayListResult
        SecurityRuleListResult = Azure::Network2::Mgmt::V2017_10_01::Models::SecurityRuleListResult
        ApplicationGatewayFirewallRuleGroup = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallRuleGroup
        NetworkSecurityGroupListResult = Azure::Network2::Mgmt::V2017_10_01::Models::NetworkSecurityGroupListResult
        ApplicationGatewayAvailableWafRuleSetsResult = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
        LogSpecification = Azure::Network2::Mgmt::V2017_10_01::Models::LogSpecification
        AddressSpace = Azure::Network2::Mgmt::V2017_10_01::Models::AddressSpace
        NetworkWatcherListResult = Azure::Network2::Mgmt::V2017_10_01::Models::NetworkWatcherListResult
        Resource = Azure::Network2::Mgmt::V2017_10_01::Models::Resource
        TopologyParameters = Azure::Network2::Mgmt::V2017_10_01::Models::TopologyParameters
        ApplicationSecurityGroupListResult = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationSecurityGroupListResult
        DnsNameAvailabilityResult = Azure::Network2::Mgmt::V2017_10_01::Models::DnsNameAvailabilityResult
        Dimension = Azure::Network2::Mgmt::V2017_10_01::Models::Dimension
        EndpointServicesListResult = Azure::Network2::Mgmt::V2017_10_01::Models::EndpointServicesListResult
        MetricSpecification = Azure::Network2::Mgmt::V2017_10_01::Models::MetricSpecification
        AuthorizationListResult = Azure::Network2::Mgmt::V2017_10_01::Models::AuthorizationListResult
        Topology = Azure::Network2::Mgmt::V2017_10_01::Models::Topology
        UsageName = Azure::Network2::Mgmt::V2017_10_01::Models::UsageName
        VerificationIPFlowParameters = Azure::Network2::Mgmt::V2017_10_01::Models::VerificationIPFlowParameters
        BgpServiceCommunityListResult = Azure::Network2::Mgmt::V2017_10_01::Models::BgpServiceCommunityListResult
        VerificationIPFlowResult = Azure::Network2::Mgmt::V2017_10_01::Models::VerificationIPFlowResult
        Ipv6ExpressRouteCircuitPeeringConfig = Azure::Network2::Mgmt::V2017_10_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
        NextHopParameters = Azure::Network2::Mgmt::V2017_10_01::Models::NextHopParameters
        ExpressRouteCircuitSku = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitSku
        NextHopResult = Azure::Network2::Mgmt::V2017_10_01::Models::NextHopResult
        RouteListResult = Azure::Network2::Mgmt::V2017_10_01::Models::RouteListResult
        SecurityGroupViewParameters = Azure::Network2::Mgmt::V2017_10_01::Models::SecurityGroupViewParameters
        ExpressRouteCircuitsArpTableListResult = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitsArpTableListResult
        NetworkInterfaceAssociation = Azure::Network2::Mgmt::V2017_10_01::Models::NetworkInterfaceAssociation
        ExpressRouteCircuitsRoutesTableListResult = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitsRoutesTableListResult
        SubnetAssociation = Azure::Network2::Mgmt::V2017_10_01::Models::SubnetAssociation
        ExpressRouteCircuitsRoutesTableSummaryListResult = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
        SecurityRuleAssociations = Azure::Network2::Mgmt::V2017_10_01::Models::SecurityRuleAssociations
        ExpressRouteServiceProviderBandwidthsOffered = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteServiceProviderBandwidthsOffered
        SecurityGroupNetworkInterface = Azure::Network2::Mgmt::V2017_10_01::Models::SecurityGroupNetworkInterface
        ExpressRouteServiceProviderListResult = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteServiceProviderListResult
        SecurityGroupViewResult = Azure::Network2::Mgmt::V2017_10_01::Models::SecurityGroupViewResult
        RouteFilterRuleListResult = Azure::Network2::Mgmt::V2017_10_01::Models::RouteFilterRuleListResult
        PacketCaptureStorageLocation = Azure::Network2::Mgmt::V2017_10_01::Models::PacketCaptureStorageLocation
        PublicIPAddressListResult = Azure::Network2::Mgmt::V2017_10_01::Models::PublicIPAddressListResult
        PacketCaptureFilter = Azure::Network2::Mgmt::V2017_10_01::Models::PacketCaptureFilter
        VirtualNetworkGatewayListConnectionsResult = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayListConnectionsResult
        PacketCaptureParameters = Azure::Network2::Mgmt::V2017_10_01::Models::PacketCaptureParameters
        ServiceEndpointPropertiesFormat = Azure::Network2::Mgmt::V2017_10_01::Models::ServiceEndpointPropertiesFormat
        PacketCapture = Azure::Network2::Mgmt::V2017_10_01::Models::PacketCapture
        VirtualNetworkGatewayConnectionListResult = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnectionListResult
        PacketCaptureResult = Azure::Network2::Mgmt::V2017_10_01::Models::PacketCaptureResult
        ApplicationGatewayBackendAddress = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendAddress
        PacketCaptureListResult = Azure::Network2::Mgmt::V2017_10_01::Models::PacketCaptureListResult
        ApplicationGatewayBackendHealthServer = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealthServer
        PacketCaptureQueryStatusResult = Azure::Network2::Mgmt::V2017_10_01::Models::PacketCaptureQueryStatusResult
        ApplicationGatewaySku = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewaySku
        TroubleshootingParameters = Azure::Network2::Mgmt::V2017_10_01::Models::TroubleshootingParameters
        BgpPeerStatus = Azure::Network2::Mgmt::V2017_10_01::Models::BgpPeerStatus
        QueryTroubleshootingParameters = Azure::Network2::Mgmt::V2017_10_01::Models::QueryTroubleshootingParameters
        VirtualNetworkListUsageResult = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkListUsageResult
        TroubleshootingRecommendedActions = Azure::Network2::Mgmt::V2017_10_01::Models::TroubleshootingRecommendedActions
        IPAddressAvailabilityResult = Azure::Network2::Mgmt::V2017_10_01::Models::IPAddressAvailabilityResult
        TroubleshootingDetails = Azure::Network2::Mgmt::V2017_10_01::Models::TroubleshootingDetails
        DhcpOptions = Azure::Network2::Mgmt::V2017_10_01::Models::DhcpOptions
        TroubleshootingResult = Azure::Network2::Mgmt::V2017_10_01::Models::TroubleshootingResult
        VirtualNetworkPeeringListResult = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkPeeringListResult
        RetentionPolicyParameters = Azure::Network2::Mgmt::V2017_10_01::Models::RetentionPolicyParameters
        ApplicationGatewayAvailableSslPredefinedPolicies = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
        FlowLogStatusParameters = Azure::Network2::Mgmt::V2017_10_01::Models::FlowLogStatusParameters
        UsagesListResult = Azure::Network2::Mgmt::V2017_10_01::Models::UsagesListResult
        FlowLogInformation = Azure::Network2::Mgmt::V2017_10_01::Models::FlowLogInformation
        ExpressRouteCircuitPeeringConfig = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringConfig
        ConnectivitySource = Azure::Network2::Mgmt::V2017_10_01::Models::ConnectivitySource
        BGPCommunity = Azure::Network2::Mgmt::V2017_10_01::Models::BGPCommunity
        ConnectivityDestination = Azure::Network2::Mgmt::V2017_10_01::Models::ConnectivityDestination
        ExpressRouteCircuitServiceProviderProperties = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitServiceProviderProperties
        ConnectivityParameters = Azure::Network2::Mgmt::V2017_10_01::Models::ConnectivityParameters
        ExpressRouteCircuitRoutesTable = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitRoutesTable
        ConnectivityIssue = Azure::Network2::Mgmt::V2017_10_01::Models::ConnectivityIssue
        ExpressRouteCircuitListResult = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitListResult
        ConnectivityHop = Azure::Network2::Mgmt::V2017_10_01::Models::ConnectivityHop
        LoadBalancerSku = Azure::Network2::Mgmt::V2017_10_01::Models::LoadBalancerSku
        ConnectivityInformation = Azure::Network2::Mgmt::V2017_10_01::Models::ConnectivityInformation
        VpnDeviceScriptParameters = Azure::Network2::Mgmt::V2017_10_01::Models::VpnDeviceScriptParameters
        AzureReachabilityReportLocation = Azure::Network2::Mgmt::V2017_10_01::Models::AzureReachabilityReportLocation
        PublicIPAddressDnsSettings = Azure::Network2::Mgmt::V2017_10_01::Models::PublicIPAddressDnsSettings
        AzureReachabilityReportParameters = Azure::Network2::Mgmt::V2017_10_01::Models::AzureReachabilityReportParameters
        ApplicationGatewayConnectionDraining = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayConnectionDraining
        AzureReachabilityReportLatencyInfo = Azure::Network2::Mgmt::V2017_10_01::Models::AzureReachabilityReportLatencyInfo
        VpnClientParameters = Azure::Network2::Mgmt::V2017_10_01::Models::VpnClientParameters
        AzureReachabilityReportItem = Azure::Network2::Mgmt::V2017_10_01::Models::AzureReachabilityReportItem
        VirtualNetworkUsage = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkUsage
        AzureReachabilityReport = Azure::Network2::Mgmt::V2017_10_01::Models::AzureReachabilityReport
        ApplicationGatewayFirewallRule = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallRule
        AvailableProvidersListParameters = Azure::Network2::Mgmt::V2017_10_01::Models::AvailableProvidersListParameters
        TagsObject = Azure::Network2::Mgmt::V2017_10_01::Models::TagsObject
        AvailableProvidersListCity = Azure::Network2::Mgmt::V2017_10_01::Models::AvailableProvidersListCity
        ExpressRouteCircuitStats = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitStats
        AvailableProvidersListState = Azure::Network2::Mgmt::V2017_10_01::Models::AvailableProvidersListState
        ExpressRouteCircuitArpTable = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitArpTable
        AvailableProvidersListCountry = Azure::Network2::Mgmt::V2017_10_01::Models::AvailableProvidersListCountry
        RouteTableListResult = Azure::Network2::Mgmt::V2017_10_01::Models::RouteTableListResult
        AvailableProvidersList = Azure::Network2::Mgmt::V2017_10_01::Models::AvailableProvidersList
        LocalNetworkGatewayListResult = Azure::Network2::Mgmt::V2017_10_01::Models::LocalNetworkGatewayListResult
        ConnectionMonitorSource = Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionMonitorSource
        ApplicationGatewayBackendHealthPool = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealthPool
        ConnectionMonitorDestination = Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionMonitorDestination
        ApplicationGatewayFirewallDisabledRuleGroup = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
        ConnectionMonitorParameters = Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionMonitorParameters
        Usage = Azure::Network2::Mgmt::V2017_10_01::Models::Usage
        ConnectionMonitor = Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionMonitor
        ExpressRouteCircuitRoutesTableSummary = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitRoutesTableSummary
        ConnectionMonitorResult = Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionMonitorResult
        TunnelConnectionHealth = Azure::Network2::Mgmt::V2017_10_01::Models::TunnelConnectionHealth
        ConnectionMonitorListResult = Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionMonitorListResult
        SubnetListResult = Azure::Network2::Mgmt::V2017_10_01::Models::SubnetListResult
        ConnectionStateSnapshot = Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionStateSnapshot
        RouteFilterListResult = Azure::Network2::Mgmt::V2017_10_01::Models::RouteFilterListResult
        ConnectionMonitorQueryResult = Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionMonitorQueryResult
        ExpressRouteCircuitPeeringListResult = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringListResult
        OperationDisplay = Azure::Network2::Mgmt::V2017_10_01::Models::OperationDisplay
        VpnClientConfiguration = Azure::Network2::Mgmt::V2017_10_01::Models::VpnClientConfiguration
        Availability = Azure::Network2::Mgmt::V2017_10_01::Models::Availability
        BackendAddressPool = Azure::Network2::Mgmt::V2017_10_01::Models::BackendAddressPool
        InboundNatRule = Azure::Network2::Mgmt::V2017_10_01::Models::InboundNatRule
        ApplicationSecurityGroup = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationSecurityGroup
        SecurityRule = Azure::Network2::Mgmt::V2017_10_01::Models::SecurityRule
        NetworkInterface = Azure::Network2::Mgmt::V2017_10_01::Models::NetworkInterface
        NetworkSecurityGroup = Azure::Network2::Mgmt::V2017_10_01::Models::NetworkSecurityGroup
        Route = Azure::Network2::Mgmt::V2017_10_01::Models::Route
        RouteTable = Azure::Network2::Mgmt::V2017_10_01::Models::RouteTable
        PublicIPAddress = Azure::Network2::Mgmt::V2017_10_01::Models::PublicIPAddress
        IPConfiguration = Azure::Network2::Mgmt::V2017_10_01::Models::IPConfiguration
        ResourceNavigationLink = Azure::Network2::Mgmt::V2017_10_01::Models::ResourceNavigationLink
        Subnet = Azure::Network2::Mgmt::V2017_10_01::Models::Subnet
        NetworkInterfaceIPConfiguration = Azure::Network2::Mgmt::V2017_10_01::Models::NetworkInterfaceIPConfiguration
        ApplicationGatewayBackendAddressPool = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendAddressPool
        ApplicationGatewayBackendHttpSettings = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHttpSettings
        ApplicationGatewayIPConfiguration = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayIPConfiguration
        ApplicationGatewayAuthenticationCertificate = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayAuthenticationCertificate
        ApplicationGatewaySslCertificate = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewaySslCertificate
        ApplicationGatewayFrontendIPConfiguration = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayFrontendIPConfiguration
        ApplicationGatewayFrontendPort = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayFrontendPort
        ApplicationGatewayHttpListener = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayHttpListener
        ApplicationGatewayPathRule = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayPathRule
        ApplicationGatewayProbe = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayProbe
        ApplicationGatewayRequestRoutingRule = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayRequestRoutingRule
        ApplicationGatewayRedirectConfiguration = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayRedirectConfiguration
        ApplicationGatewayUrlPathMap = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayUrlPathMap
        ApplicationGateway = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGateway
        ApplicationGatewayFirewallRuleSet = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallRuleSet
        ApplicationGatewayAvailableSslOptions = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayAvailableSslOptions
        ApplicationGatewaySslPredefinedPolicy = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewaySslPredefinedPolicy
        EndpointServiceResult = Azure::Network2::Mgmt::V2017_10_01::Models::EndpointServiceResult
        ExpressRouteCircuitAuthorization = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitAuthorization
        RouteFilterRule = Azure::Network2::Mgmt::V2017_10_01::Models::RouteFilterRule
        ExpressRouteCircuitPeering = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeering
        RouteFilter = Azure::Network2::Mgmt::V2017_10_01::Models::RouteFilter
        ExpressRouteCircuit = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuit
        ExpressRouteServiceProvider = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteServiceProvider
        FrontendIPConfiguration = Azure::Network2::Mgmt::V2017_10_01::Models::FrontendIPConfiguration
        LoadBalancingRule = Azure::Network2::Mgmt::V2017_10_01::Models::LoadBalancingRule
        Probe = Azure::Network2::Mgmt::V2017_10_01::Models::Probe
        InboundNatPool = Azure::Network2::Mgmt::V2017_10_01::Models::InboundNatPool
        OutboundNatRule = Azure::Network2::Mgmt::V2017_10_01::Models::OutboundNatRule
        LoadBalancer = Azure::Network2::Mgmt::V2017_10_01::Models::LoadBalancer
        NetworkWatcher = Azure::Network2::Mgmt::V2017_10_01::Models::NetworkWatcher
        PatchRouteFilterRule = Azure::Network2::Mgmt::V2017_10_01::Models::PatchRouteFilterRule
        PatchRouteFilter = Azure::Network2::Mgmt::V2017_10_01::Models::PatchRouteFilter
        BgpServiceCommunity = Azure::Network2::Mgmt::V2017_10_01::Models::BgpServiceCommunity
        VirtualNetworkPeering = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkPeering
        VirtualNetwork = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetwork
        VirtualNetworkGatewayIPConfiguration = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayIPConfiguration
        VpnClientRootCertificate = Azure::Network2::Mgmt::V2017_10_01::Models::VpnClientRootCertificate
        VpnClientRevokedCertificate = Azure::Network2::Mgmt::V2017_10_01::Models::VpnClientRevokedCertificate
        VirtualNetworkGateway = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGateway
        LocalNetworkGateway = Azure::Network2::Mgmt::V2017_10_01::Models::LocalNetworkGateway
        VirtualNetworkGatewayConnection = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnection
        VirtualNetworkGatewayConnectionListEntity = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnectionListEntity
        TransportProtocol = Azure::Network2::Mgmt::V2017_10_01::Models::TransportProtocol
        IPAllocationMethod = Azure::Network2::Mgmt::V2017_10_01::Models::IPAllocationMethod
        IPVersion = Azure::Network2::Mgmt::V2017_10_01::Models::IPVersion
        SecurityRuleProtocol = Azure::Network2::Mgmt::V2017_10_01::Models::SecurityRuleProtocol
        SecurityRuleAccess = Azure::Network2::Mgmt::V2017_10_01::Models::SecurityRuleAccess
        SecurityRuleDirection = Azure::Network2::Mgmt::V2017_10_01::Models::SecurityRuleDirection
        RouteNextHopType = Azure::Network2::Mgmt::V2017_10_01::Models::RouteNextHopType
        PublicIPAddressSkuName = Azure::Network2::Mgmt::V2017_10_01::Models::PublicIPAddressSkuName
        ApplicationGatewayProtocol = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayProtocol
        ApplicationGatewayCookieBasedAffinity = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayCookieBasedAffinity
        ApplicationGatewayBackendHealthServerHealth = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealthServerHealth
        ApplicationGatewaySkuName = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewaySkuName
        ApplicationGatewayTier = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayTier
        ApplicationGatewaySslProtocol = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewaySslProtocol
        ApplicationGatewaySslPolicyType = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewaySslPolicyType
        ApplicationGatewaySslPolicyName = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewaySslPolicyName
        ApplicationGatewaySslCipherSuite = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewaySslCipherSuite
        ApplicationGatewayRequestRoutingRuleType = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayRequestRoutingRuleType
        ApplicationGatewayRedirectType = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayRedirectType
        ApplicationGatewayOperationalState = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayOperationalState
        ApplicationGatewayFirewallMode = Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallMode
        AuthorizationUseStatus = Azure::Network2::Mgmt::V2017_10_01::Models::AuthorizationUseStatus
        ExpressRouteCircuitPeeringAdvertisedPublicPrefixState = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
        Access = Azure::Network2::Mgmt::V2017_10_01::Models::Access
        ExpressRouteCircuitPeeringType = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringType
        ExpressRouteCircuitPeeringState = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringState
        ExpressRouteCircuitSkuTier = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitSkuTier
        ExpressRouteCircuitSkuFamily = Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitSkuFamily
        ServiceProviderProvisioningState = Azure::Network2::Mgmt::V2017_10_01::Models::ServiceProviderProvisioningState
        LoadBalancerSkuName = Azure::Network2::Mgmt::V2017_10_01::Models::LoadBalancerSkuName
        LoadDistribution = Azure::Network2::Mgmt::V2017_10_01::Models::LoadDistribution
        ProbeProtocol = Azure::Network2::Mgmt::V2017_10_01::Models::ProbeProtocol
        NetworkOperationStatus = Azure::Network2::Mgmt::V2017_10_01::Models::NetworkOperationStatus
        EffectiveSecurityRuleProtocol = Azure::Network2::Mgmt::V2017_10_01::Models::EffectiveSecurityRuleProtocol
        EffectiveRouteSource = Azure::Network2::Mgmt::V2017_10_01::Models::EffectiveRouteSource
        EffectiveRouteState = Azure::Network2::Mgmt::V2017_10_01::Models::EffectiveRouteState
        ProvisioningState = Azure::Network2::Mgmt::V2017_10_01::Models::ProvisioningState
        AssociationType = Azure::Network2::Mgmt::V2017_10_01::Models::AssociationType
        Direction = Azure::Network2::Mgmt::V2017_10_01::Models::Direction
        Protocol = Azure::Network2::Mgmt::V2017_10_01::Models::Protocol
        NextHopType = Azure::Network2::Mgmt::V2017_10_01::Models::NextHopType
        PcProtocol = Azure::Network2::Mgmt::V2017_10_01::Models::PcProtocol
        PcStatus = Azure::Network2::Mgmt::V2017_10_01::Models::PcStatus
        PcError = Azure::Network2::Mgmt::V2017_10_01::Models::PcError
        Origin = Azure::Network2::Mgmt::V2017_10_01::Models::Origin
        Severity = Azure::Network2::Mgmt::V2017_10_01::Models::Severity
        IssueType = Azure::Network2::Mgmt::V2017_10_01::Models::IssueType
        ConnectionStatus = Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionStatus
        ConnectionState = Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionState
        EvaluationState = Azure::Network2::Mgmt::V2017_10_01::Models::EvaluationState
        VirtualNetworkPeeringState = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkPeeringState
        VirtualNetworkGatewayType = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayType
        VpnType = Azure::Network2::Mgmt::V2017_10_01::Models::VpnType
        VirtualNetworkGatewaySkuName = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewaySkuName
        VirtualNetworkGatewaySkuTier = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewaySkuTier
        VpnClientProtocol = Azure::Network2::Mgmt::V2017_10_01::Models::VpnClientProtocol
        BgpPeerState = Azure::Network2::Mgmt::V2017_10_01::Models::BgpPeerState
        ProcessorArchitecture = Azure::Network2::Mgmt::V2017_10_01::Models::ProcessorArchitecture
        AuthenticationMethod = Azure::Network2::Mgmt::V2017_10_01::Models::AuthenticationMethod
        VirtualNetworkGatewayConnectionStatus = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnectionStatus
        VirtualNetworkGatewayConnectionType = Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnectionType
        IpsecEncryption = Azure::Network2::Mgmt::V2017_10_01::Models::IpsecEncryption
        IpsecIntegrity = Azure::Network2::Mgmt::V2017_10_01::Models::IpsecIntegrity
        IkeEncryption = Azure::Network2::Mgmt::V2017_10_01::Models::IkeEncryption
        IkeIntegrity = Azure::Network2::Mgmt::V2017_10_01::Models::IkeIntegrity
        DhGroup = Azure::Network2::Mgmt::V2017_10_01::Models::DhGroup
        PfsGroup = Azure::Network2::Mgmt::V2017_10_01::Models::PfsGroup
      end

      class NetworkManagementClass
        attr_reader :application_gateways, :application_security_groups, :available_endpoint_services, :express_route_circuit_authorizations, :express_route_circuit_peerings, :express_route_circuits, :express_route_service_providers, :load_balancers, :load_balancer_backend_address_pools, :load_balancer_frontend_ipconfigurations, :inbound_nat_rules, :load_balancer_load_balancing_rules, :load_balancer_network_interfaces, :load_balancer_probes, :network_interfaces, :network_interface_ipconfigurations, :network_interface_load_balancers, :network_security_groups, :security_rules, :default_security_rules, :network_watchers, :packet_captures, :connection_monitors, :operations, :public_ipaddresses, :route_filters, :route_filter_rules, :route_tables, :routes, :bgp_service_communities, :usages, :virtual_networks, :subnets, :virtual_network_peerings, :virtual_network_gateways, :virtual_network_gateway_connections, :local_network_gateways, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Network2::Mgmt::V2017_10_01::NetworkManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @application_gateways = @client_0.application_gateways
          @application_security_groups = @client_0.application_security_groups
          @available_endpoint_services = @client_0.available_endpoint_services
          @express_route_circuit_authorizations = @client_0.express_route_circuit_authorizations
          @express_route_circuit_peerings = @client_0.express_route_circuit_peerings
          @express_route_circuits = @client_0.express_route_circuits
          @express_route_service_providers = @client_0.express_route_service_providers
          @load_balancers = @client_0.load_balancers
          @load_balancer_backend_address_pools = @client_0.load_balancer_backend_address_pools
          @load_balancer_frontend_ipconfigurations = @client_0.load_balancer_frontend_ipconfigurations
          @inbound_nat_rules = @client_0.inbound_nat_rules
          @load_balancer_load_balancing_rules = @client_0.load_balancer_load_balancing_rules
          @load_balancer_network_interfaces = @client_0.load_balancer_network_interfaces
          @load_balancer_probes = @client_0.load_balancer_probes
          @network_interfaces = @client_0.network_interfaces
          @network_interface_ipconfigurations = @client_0.network_interface_ipconfigurations
          @network_interface_load_balancers = @client_0.network_interface_load_balancers
          @network_security_groups = @client_0.network_security_groups
          @security_rules = @client_0.security_rules
          @default_security_rules = @client_0.default_security_rules
          @network_watchers = @client_0.network_watchers
          @packet_captures = @client_0.packet_captures
          @connection_monitors = @client_0.connection_monitors
          @operations = @client_0.operations
          @public_ipaddresses = @client_0.public_ipaddresses
          @route_filters = @client_0.route_filters
          @route_filter_rules = @client_0.route_filter_rules
          @route_tables = @client_0.route_tables
          @routes = @client_0.routes
          @bgp_service_communities = @client_0.bgp_service_communities
          @usages = @client_0.usages
          @virtual_networks = @client_0.virtual_networks
          @subnets = @client_0.subnets
          @virtual_network_peerings = @client_0.virtual_network_peerings
          @virtual_network_gateways = @client_0.virtual_network_gateways
          @virtual_network_gateway_connections = @client_0.virtual_network_gateway_connections
          @local_network_gateways = @client_0.local_network_gateways

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_03_01_Hybrid/Network/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def topology_association
            Azure::Network2::Mgmt::V2017_10_01::Models::TopologyAssociation
          end
          def sub_resource
            Azure::Network2::Mgmt::V2017_10_01::Models::SubResource
          end
          def topology_resource
            Azure::Network2::Mgmt::V2017_10_01::Models::TopologyResource
          end
          def operation_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::OperationListResult
          end
          def operation
            Azure::Network2::Mgmt::V2017_10_01::Models::Operation
          end
          def network_interface_dns_settings
            Azure::Network2::Mgmt::V2017_10_01::Models::NetworkInterfaceDnsSettings
          end
          def operation_properties_format_service_specification
            Azure::Network2::Mgmt::V2017_10_01::Models::OperationPropertiesFormatServiceSpecification
          end
          def virtual_network_connection_gateway_reference
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkConnectionGatewayReference
          end
          def load_balancer_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::LoadBalancerListResult
          end
          def connection_shared_key
            Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionSharedKey
          end
          def inbound_nat_rule_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::InboundNatRuleListResult
          end
          def public_ipaddress_sku
            Azure::Network2::Mgmt::V2017_10_01::Models::PublicIPAddressSku
          end
          def load_balancer_backend_address_pool_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::LoadBalancerBackendAddressPoolListResult
          end
          def connection_reset_shared_key
            Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionResetSharedKey
          end
          def load_balancer_frontend_ipconfiguration_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::LoadBalancerFrontendIPConfigurationListResult
          end
          def ipsec_policy
            Azure::Network2::Mgmt::V2017_10_01::Models::IpsecPolicy
          end
          def load_balancer_load_balancing_rule_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::LoadBalancerLoadBalancingRuleListResult
          end
          def gateway_route_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::GatewayRouteListResult
          end
          def load_balancer_probe_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::LoadBalancerProbeListResult
          end
          def bgp_peer_status_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::BgpPeerStatusListResult
          end
          def network_interface_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::NetworkInterfaceListResult
          end
          def virtual_network_gateway_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayListResult
          end
          def error_details
            Azure::Network2::Mgmt::V2017_10_01::Models::ErrorDetails
          end
          def application_gateway_backend_health_http_settings
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealthHttpSettings
          end
          def error
            Azure::Network2::Mgmt::V2017_10_01::Models::Error
          end
          def application_gateway_backend_health
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealth
          end
          def azure_async_operation_result
            Azure::Network2::Mgmt::V2017_10_01::Models::AzureAsyncOperationResult
          end
          def application_gateway_ssl_policy
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewaySslPolicy
          end
          def network_interface_ipconfiguration_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::NetworkInterfaceIPConfigurationListResult
          end
          def gateway_route
            Azure::Network2::Mgmt::V2017_10_01::Models::GatewayRoute
          end
          def network_interface_load_balancer_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::NetworkInterfaceLoadBalancerListResult
          end
          def bgp_settings
            Azure::Network2::Mgmt::V2017_10_01::Models::BgpSettings
          end
          def effective_network_security_group_association
            Azure::Network2::Mgmt::V2017_10_01::Models::EffectiveNetworkSecurityGroupAssociation
          end
          def virtual_network_gateway_sku
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewaySku
          end
          def effective_network_security_rule
            Azure::Network2::Mgmt::V2017_10_01::Models::EffectiveNetworkSecurityRule
          end
          def application_gateway_probe_health_response_match
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayProbeHealthResponseMatch
          end
          def effective_network_security_group
            Azure::Network2::Mgmt::V2017_10_01::Models::EffectiveNetworkSecurityGroup
          end
          def virtual_network_usage_name
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkUsageName
          end
          def effective_network_security_group_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::EffectiveNetworkSecurityGroupListResult
          end
          def virtual_network_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkListResult
          end
          def effective_route
            Azure::Network2::Mgmt::V2017_10_01::Models::EffectiveRoute
          end
          def application_gateway_web_application_firewall_configuration
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
          end
          def effective_route_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::EffectiveRouteListResult
          end
          def application_gateway_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayListResult
          end
          def security_rule_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::SecurityRuleListResult
          end
          def application_gateway_firewall_rule_group
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallRuleGroup
          end
          def network_security_group_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::NetworkSecurityGroupListResult
          end
          def application_gateway_available_waf_rule_sets_result
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
          end
          def log_specification
            Azure::Network2::Mgmt::V2017_10_01::Models::LogSpecification
          end
          def address_space
            Azure::Network2::Mgmt::V2017_10_01::Models::AddressSpace
          end
          def network_watcher_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::NetworkWatcherListResult
          end
          def resource
            Azure::Network2::Mgmt::V2017_10_01::Models::Resource
          end
          def topology_parameters
            Azure::Network2::Mgmt::V2017_10_01::Models::TopologyParameters
          end
          def application_security_group_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationSecurityGroupListResult
          end
          def dns_name_availability_result
            Azure::Network2::Mgmt::V2017_10_01::Models::DnsNameAvailabilityResult
          end
          def dimension
            Azure::Network2::Mgmt::V2017_10_01::Models::Dimension
          end
          def endpoint_services_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::EndpointServicesListResult
          end
          def metric_specification
            Azure::Network2::Mgmt::V2017_10_01::Models::MetricSpecification
          end
          def authorization_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::AuthorizationListResult
          end
          def topology
            Azure::Network2::Mgmt::V2017_10_01::Models::Topology
          end
          def usage_name
            Azure::Network2::Mgmt::V2017_10_01::Models::UsageName
          end
          def verification_ipflow_parameters
            Azure::Network2::Mgmt::V2017_10_01::Models::VerificationIPFlowParameters
          end
          def bgp_service_community_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::BgpServiceCommunityListResult
          end
          def verification_ipflow_result
            Azure::Network2::Mgmt::V2017_10_01::Models::VerificationIPFlowResult
          end
          def ipv6_express_route_circuit_peering_config
            Azure::Network2::Mgmt::V2017_10_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
          end
          def next_hop_parameters
            Azure::Network2::Mgmt::V2017_10_01::Models::NextHopParameters
          end
          def express_route_circuit_sku
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitSku
          end
          def next_hop_result
            Azure::Network2::Mgmt::V2017_10_01::Models::NextHopResult
          end
          def route_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::RouteListResult
          end
          def security_group_view_parameters
            Azure::Network2::Mgmt::V2017_10_01::Models::SecurityGroupViewParameters
          end
          def express_route_circuits_arp_table_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitsArpTableListResult
          end
          def network_interface_association
            Azure::Network2::Mgmt::V2017_10_01::Models::NetworkInterfaceAssociation
          end
          def express_route_circuits_routes_table_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitsRoutesTableListResult
          end
          def subnet_association
            Azure::Network2::Mgmt::V2017_10_01::Models::SubnetAssociation
          end
          def express_route_circuits_routes_table_summary_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
          end
          def security_rule_associations
            Azure::Network2::Mgmt::V2017_10_01::Models::SecurityRuleAssociations
          end
          def express_route_service_provider_bandwidths_offered
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteServiceProviderBandwidthsOffered
          end
          def security_group_network_interface
            Azure::Network2::Mgmt::V2017_10_01::Models::SecurityGroupNetworkInterface
          end
          def express_route_service_provider_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteServiceProviderListResult
          end
          def security_group_view_result
            Azure::Network2::Mgmt::V2017_10_01::Models::SecurityGroupViewResult
          end
          def route_filter_rule_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::RouteFilterRuleListResult
          end
          def packet_capture_storage_location
            Azure::Network2::Mgmt::V2017_10_01::Models::PacketCaptureStorageLocation
          end
          def public_ipaddress_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::PublicIPAddressListResult
          end
          def packet_capture_filter
            Azure::Network2::Mgmt::V2017_10_01::Models::PacketCaptureFilter
          end
          def virtual_network_gateway_list_connections_result
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayListConnectionsResult
          end
          def packet_capture_parameters
            Azure::Network2::Mgmt::V2017_10_01::Models::PacketCaptureParameters
          end
          def service_endpoint_properties_format
            Azure::Network2::Mgmt::V2017_10_01::Models::ServiceEndpointPropertiesFormat
          end
          def packet_capture
            Azure::Network2::Mgmt::V2017_10_01::Models::PacketCapture
          end
          def virtual_network_gateway_connection_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnectionListResult
          end
          def packet_capture_result
            Azure::Network2::Mgmt::V2017_10_01::Models::PacketCaptureResult
          end
          def application_gateway_backend_address
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendAddress
          end
          def packet_capture_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::PacketCaptureListResult
          end
          def application_gateway_backend_health_server
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealthServer
          end
          def packet_capture_query_status_result
            Azure::Network2::Mgmt::V2017_10_01::Models::PacketCaptureQueryStatusResult
          end
          def application_gateway_sku
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewaySku
          end
          def troubleshooting_parameters
            Azure::Network2::Mgmt::V2017_10_01::Models::TroubleshootingParameters
          end
          def bgp_peer_status
            Azure::Network2::Mgmt::V2017_10_01::Models::BgpPeerStatus
          end
          def query_troubleshooting_parameters
            Azure::Network2::Mgmt::V2017_10_01::Models::QueryTroubleshootingParameters
          end
          def virtual_network_list_usage_result
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkListUsageResult
          end
          def troubleshooting_recommended_actions
            Azure::Network2::Mgmt::V2017_10_01::Models::TroubleshootingRecommendedActions
          end
          def ipaddress_availability_result
            Azure::Network2::Mgmt::V2017_10_01::Models::IPAddressAvailabilityResult
          end
          def troubleshooting_details
            Azure::Network2::Mgmt::V2017_10_01::Models::TroubleshootingDetails
          end
          def dhcp_options
            Azure::Network2::Mgmt::V2017_10_01::Models::DhcpOptions
          end
          def troubleshooting_result
            Azure::Network2::Mgmt::V2017_10_01::Models::TroubleshootingResult
          end
          def virtual_network_peering_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkPeeringListResult
          end
          def retention_policy_parameters
            Azure::Network2::Mgmt::V2017_10_01::Models::RetentionPolicyParameters
          end
          def application_gateway_available_ssl_predefined_policies
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
          end
          def flow_log_status_parameters
            Azure::Network2::Mgmt::V2017_10_01::Models::FlowLogStatusParameters
          end
          def usages_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::UsagesListResult
          end
          def flow_log_information
            Azure::Network2::Mgmt::V2017_10_01::Models::FlowLogInformation
          end
          def express_route_circuit_peering_config
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringConfig
          end
          def connectivity_source
            Azure::Network2::Mgmt::V2017_10_01::Models::ConnectivitySource
          end
          def bgpcommunity
            Azure::Network2::Mgmt::V2017_10_01::Models::BGPCommunity
          end
          def connectivity_destination
            Azure::Network2::Mgmt::V2017_10_01::Models::ConnectivityDestination
          end
          def express_route_circuit_service_provider_properties
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitServiceProviderProperties
          end
          def connectivity_parameters
            Azure::Network2::Mgmt::V2017_10_01::Models::ConnectivityParameters
          end
          def express_route_circuit_routes_table
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitRoutesTable
          end
          def connectivity_issue
            Azure::Network2::Mgmt::V2017_10_01::Models::ConnectivityIssue
          end
          def express_route_circuit_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitListResult
          end
          def connectivity_hop
            Azure::Network2::Mgmt::V2017_10_01::Models::ConnectivityHop
          end
          def load_balancer_sku
            Azure::Network2::Mgmt::V2017_10_01::Models::LoadBalancerSku
          end
          def connectivity_information
            Azure::Network2::Mgmt::V2017_10_01::Models::ConnectivityInformation
          end
          def vpn_device_script_parameters
            Azure::Network2::Mgmt::V2017_10_01::Models::VpnDeviceScriptParameters
          end
          def azure_reachability_report_location
            Azure::Network2::Mgmt::V2017_10_01::Models::AzureReachabilityReportLocation
          end
          def public_ipaddress_dns_settings
            Azure::Network2::Mgmt::V2017_10_01::Models::PublicIPAddressDnsSettings
          end
          def azure_reachability_report_parameters
            Azure::Network2::Mgmt::V2017_10_01::Models::AzureReachabilityReportParameters
          end
          def application_gateway_connection_draining
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayConnectionDraining
          end
          def azure_reachability_report_latency_info
            Azure::Network2::Mgmt::V2017_10_01::Models::AzureReachabilityReportLatencyInfo
          end
          def vpn_client_parameters
            Azure::Network2::Mgmt::V2017_10_01::Models::VpnClientParameters
          end
          def azure_reachability_report_item
            Azure::Network2::Mgmt::V2017_10_01::Models::AzureReachabilityReportItem
          end
          def virtual_network_usage
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkUsage
          end
          def azure_reachability_report
            Azure::Network2::Mgmt::V2017_10_01::Models::AzureReachabilityReport
          end
          def application_gateway_firewall_rule
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallRule
          end
          def available_providers_list_parameters
            Azure::Network2::Mgmt::V2017_10_01::Models::AvailableProvidersListParameters
          end
          def tags_object
            Azure::Network2::Mgmt::V2017_10_01::Models::TagsObject
          end
          def available_providers_list_city
            Azure::Network2::Mgmt::V2017_10_01::Models::AvailableProvidersListCity
          end
          def express_route_circuit_stats
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitStats
          end
          def available_providers_list_state
            Azure::Network2::Mgmt::V2017_10_01::Models::AvailableProvidersListState
          end
          def express_route_circuit_arp_table
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitArpTable
          end
          def available_providers_list_country
            Azure::Network2::Mgmt::V2017_10_01::Models::AvailableProvidersListCountry
          end
          def route_table_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::RouteTableListResult
          end
          def available_providers_list
            Azure::Network2::Mgmt::V2017_10_01::Models::AvailableProvidersList
          end
          def local_network_gateway_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::LocalNetworkGatewayListResult
          end
          def connection_monitor_source
            Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionMonitorSource
          end
          def application_gateway_backend_health_pool
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealthPool
          end
          def connection_monitor_destination
            Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionMonitorDestination
          end
          def application_gateway_firewall_disabled_rule_group
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
          end
          def connection_monitor_parameters
            Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionMonitorParameters
          end
          def usage
            Azure::Network2::Mgmt::V2017_10_01::Models::Usage
          end
          def connection_monitor
            Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionMonitor
          end
          def express_route_circuit_routes_table_summary
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitRoutesTableSummary
          end
          def connection_monitor_result
            Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionMonitorResult
          end
          def tunnel_connection_health
            Azure::Network2::Mgmt::V2017_10_01::Models::TunnelConnectionHealth
          end
          def connection_monitor_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionMonitorListResult
          end
          def subnet_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::SubnetListResult
          end
          def connection_state_snapshot
            Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionStateSnapshot
          end
          def route_filter_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::RouteFilterListResult
          end
          def connection_monitor_query_result
            Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionMonitorQueryResult
          end
          def express_route_circuit_peering_list_result
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringListResult
          end
          def operation_display
            Azure::Network2::Mgmt::V2017_10_01::Models::OperationDisplay
          end
          def vpn_client_configuration
            Azure::Network2::Mgmt::V2017_10_01::Models::VpnClientConfiguration
          end
          def availability
            Azure::Network2::Mgmt::V2017_10_01::Models::Availability
          end
          def backend_address_pool
            Azure::Network2::Mgmt::V2017_10_01::Models::BackendAddressPool
          end
          def inbound_nat_rule
            Azure::Network2::Mgmt::V2017_10_01::Models::InboundNatRule
          end
          def application_security_group
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationSecurityGroup
          end
          def security_rule
            Azure::Network2::Mgmt::V2017_10_01::Models::SecurityRule
          end
          def network_interface
            Azure::Network2::Mgmt::V2017_10_01::Models::NetworkInterface
          end
          def network_security_group
            Azure::Network2::Mgmt::V2017_10_01::Models::NetworkSecurityGroup
          end
          def route
            Azure::Network2::Mgmt::V2017_10_01::Models::Route
          end
          def route_table
            Azure::Network2::Mgmt::V2017_10_01::Models::RouteTable
          end
          def public_ipaddress
            Azure::Network2::Mgmt::V2017_10_01::Models::PublicIPAddress
          end
          def ipconfiguration
            Azure::Network2::Mgmt::V2017_10_01::Models::IPConfiguration
          end
          def resource_navigation_link
            Azure::Network2::Mgmt::V2017_10_01::Models::ResourceNavigationLink
          end
          def subnet
            Azure::Network2::Mgmt::V2017_10_01::Models::Subnet
          end
          def network_interface_ipconfiguration
            Azure::Network2::Mgmt::V2017_10_01::Models::NetworkInterfaceIPConfiguration
          end
          def application_gateway_backend_address_pool
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendAddressPool
          end
          def application_gateway_backend_http_settings
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHttpSettings
          end
          def application_gateway_ipconfiguration
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayIPConfiguration
          end
          def application_gateway_authentication_certificate
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayAuthenticationCertificate
          end
          def application_gateway_ssl_certificate
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewaySslCertificate
          end
          def application_gateway_frontend_ipconfiguration
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayFrontendIPConfiguration
          end
          def application_gateway_frontend_port
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayFrontendPort
          end
          def application_gateway_http_listener
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayHttpListener
          end
          def application_gateway_path_rule
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayPathRule
          end
          def application_gateway_probe
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayProbe
          end
          def application_gateway_request_routing_rule
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayRequestRoutingRule
          end
          def application_gateway_redirect_configuration
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayRedirectConfiguration
          end
          def application_gateway_url_path_map
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayUrlPathMap
          end
          def application_gateway
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGateway
          end
          def application_gateway_firewall_rule_set
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallRuleSet
          end
          def application_gateway_available_ssl_options
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayAvailableSslOptions
          end
          def application_gateway_ssl_predefined_policy
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewaySslPredefinedPolicy
          end
          def endpoint_service_result
            Azure::Network2::Mgmt::V2017_10_01::Models::EndpointServiceResult
          end
          def express_route_circuit_authorization
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitAuthorization
          end
          def route_filter_rule
            Azure::Network2::Mgmt::V2017_10_01::Models::RouteFilterRule
          end
          def express_route_circuit_peering
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeering
          end
          def route_filter
            Azure::Network2::Mgmt::V2017_10_01::Models::RouteFilter
          end
          def express_route_circuit
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuit
          end
          def express_route_service_provider
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteServiceProvider
          end
          def frontend_ipconfiguration
            Azure::Network2::Mgmt::V2017_10_01::Models::FrontendIPConfiguration
          end
          def load_balancing_rule
            Azure::Network2::Mgmt::V2017_10_01::Models::LoadBalancingRule
          end
          def probe
            Azure::Network2::Mgmt::V2017_10_01::Models::Probe
          end
          def inbound_nat_pool
            Azure::Network2::Mgmt::V2017_10_01::Models::InboundNatPool
          end
          def outbound_nat_rule
            Azure::Network2::Mgmt::V2017_10_01::Models::OutboundNatRule
          end
          def load_balancer
            Azure::Network2::Mgmt::V2017_10_01::Models::LoadBalancer
          end
          def network_watcher
            Azure::Network2::Mgmt::V2017_10_01::Models::NetworkWatcher
          end
          def patch_route_filter_rule
            Azure::Network2::Mgmt::V2017_10_01::Models::PatchRouteFilterRule
          end
          def patch_route_filter
            Azure::Network2::Mgmt::V2017_10_01::Models::PatchRouteFilter
          end
          def bgp_service_community
            Azure::Network2::Mgmt::V2017_10_01::Models::BgpServiceCommunity
          end
          def virtual_network_peering
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkPeering
          end
          def virtual_network
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetwork
          end
          def virtual_network_gateway_ipconfiguration
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayIPConfiguration
          end
          def vpn_client_root_certificate
            Azure::Network2::Mgmt::V2017_10_01::Models::VpnClientRootCertificate
          end
          def vpn_client_revoked_certificate
            Azure::Network2::Mgmt::V2017_10_01::Models::VpnClientRevokedCertificate
          end
          def virtual_network_gateway
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGateway
          end
          def local_network_gateway
            Azure::Network2::Mgmt::V2017_10_01::Models::LocalNetworkGateway
          end
          def virtual_network_gateway_connection
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnection
          end
          def virtual_network_gateway_connection_list_entity
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnectionListEntity
          end
          def transport_protocol
            Azure::Network2::Mgmt::V2017_10_01::Models::TransportProtocol
          end
          def ipallocation_method
            Azure::Network2::Mgmt::V2017_10_01::Models::IPAllocationMethod
          end
          def ipversion
            Azure::Network2::Mgmt::V2017_10_01::Models::IPVersion
          end
          def security_rule_protocol
            Azure::Network2::Mgmt::V2017_10_01::Models::SecurityRuleProtocol
          end
          def security_rule_access
            Azure::Network2::Mgmt::V2017_10_01::Models::SecurityRuleAccess
          end
          def security_rule_direction
            Azure::Network2::Mgmt::V2017_10_01::Models::SecurityRuleDirection
          end
          def route_next_hop_type
            Azure::Network2::Mgmt::V2017_10_01::Models::RouteNextHopType
          end
          def public_ipaddress_sku_name
            Azure::Network2::Mgmt::V2017_10_01::Models::PublicIPAddressSkuName
          end
          def application_gateway_protocol
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayProtocol
          end
          def application_gateway_cookie_based_affinity
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayCookieBasedAffinity
          end
          def application_gateway_backend_health_server_health
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealthServerHealth
          end
          def application_gateway_sku_name
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewaySkuName
          end
          def application_gateway_tier
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayTier
          end
          def application_gateway_ssl_protocol
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewaySslProtocol
          end
          def application_gateway_ssl_policy_type
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewaySslPolicyType
          end
          def application_gateway_ssl_policy_name
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewaySslPolicyName
          end
          def application_gateway_ssl_cipher_suite
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewaySslCipherSuite
          end
          def application_gateway_request_routing_rule_type
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayRequestRoutingRuleType
          end
          def application_gateway_redirect_type
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayRedirectType
          end
          def application_gateway_operational_state
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayOperationalState
          end
          def application_gateway_firewall_mode
            Azure::Network2::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallMode
          end
          def authorization_use_status
            Azure::Network2::Mgmt::V2017_10_01::Models::AuthorizationUseStatus
          end
          def express_route_circuit_peering_advertised_public_prefix_state
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
          end
          def access
            Azure::Network2::Mgmt::V2017_10_01::Models::Access
          end
          def express_route_circuit_peering_type
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringType
          end
          def express_route_circuit_peering_state
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringState
          end
          def express_route_circuit_sku_tier
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitSkuTier
          end
          def express_route_circuit_sku_family
            Azure::Network2::Mgmt::V2017_10_01::Models::ExpressRouteCircuitSkuFamily
          end
          def service_provider_provisioning_state
            Azure::Network2::Mgmt::V2017_10_01::Models::ServiceProviderProvisioningState
          end
          def load_balancer_sku_name
            Azure::Network2::Mgmt::V2017_10_01::Models::LoadBalancerSkuName
          end
          def load_distribution
            Azure::Network2::Mgmt::V2017_10_01::Models::LoadDistribution
          end
          def probe_protocol
            Azure::Network2::Mgmt::V2017_10_01::Models::ProbeProtocol
          end
          def network_operation_status
            Azure::Network2::Mgmt::V2017_10_01::Models::NetworkOperationStatus
          end
          def effective_security_rule_protocol
            Azure::Network2::Mgmt::V2017_10_01::Models::EffectiveSecurityRuleProtocol
          end
          def effective_route_source
            Azure::Network2::Mgmt::V2017_10_01::Models::EffectiveRouteSource
          end
          def effective_route_state
            Azure::Network2::Mgmt::V2017_10_01::Models::EffectiveRouteState
          end
          def provisioning_state
            Azure::Network2::Mgmt::V2017_10_01::Models::ProvisioningState
          end
          def association_type
            Azure::Network2::Mgmt::V2017_10_01::Models::AssociationType
          end
          def direction
            Azure::Network2::Mgmt::V2017_10_01::Models::Direction
          end
          def protocol
            Azure::Network2::Mgmt::V2017_10_01::Models::Protocol
          end
          def next_hop_type
            Azure::Network2::Mgmt::V2017_10_01::Models::NextHopType
          end
          def pc_protocol
            Azure::Network2::Mgmt::V2017_10_01::Models::PcProtocol
          end
          def pc_status
            Azure::Network2::Mgmt::V2017_10_01::Models::PcStatus
          end
          def pc_error
            Azure::Network2::Mgmt::V2017_10_01::Models::PcError
          end
          def origin
            Azure::Network2::Mgmt::V2017_10_01::Models::Origin
          end
          def severity
            Azure::Network2::Mgmt::V2017_10_01::Models::Severity
          end
          def issue_type
            Azure::Network2::Mgmt::V2017_10_01::Models::IssueType
          end
          def connection_status
            Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionStatus
          end
          def connection_state
            Azure::Network2::Mgmt::V2017_10_01::Models::ConnectionState
          end
          def evaluation_state
            Azure::Network2::Mgmt::V2017_10_01::Models::EvaluationState
          end
          def virtual_network_peering_state
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkPeeringState
          end
          def virtual_network_gateway_type
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayType
          end
          def vpn_type
            Azure::Network2::Mgmt::V2017_10_01::Models::VpnType
          end
          def virtual_network_gateway_sku_name
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewaySkuName
          end
          def virtual_network_gateway_sku_tier
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewaySkuTier
          end
          def vpn_client_protocol
            Azure::Network2::Mgmt::V2017_10_01::Models::VpnClientProtocol
          end
          def bgp_peer_state
            Azure::Network2::Mgmt::V2017_10_01::Models::BgpPeerState
          end
          def processor_architecture
            Azure::Network2::Mgmt::V2017_10_01::Models::ProcessorArchitecture
          end
          def authentication_method
            Azure::Network2::Mgmt::V2017_10_01::Models::AuthenticationMethod
          end
          def virtual_network_gateway_connection_status
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnectionStatus
          end
          def virtual_network_gateway_connection_type
            Azure::Network2::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnectionType
          end
          def ipsec_encryption
            Azure::Network2::Mgmt::V2017_10_01::Models::IpsecEncryption
          end
          def ipsec_integrity
            Azure::Network2::Mgmt::V2017_10_01::Models::IpsecIntegrity
          end
          def ike_encryption
            Azure::Network2::Mgmt::V2017_10_01::Models::IkeEncryption
          end
          def ike_integrity
            Azure::Network2::Mgmt::V2017_10_01::Models::IkeIntegrity
          end
          def dh_group
            Azure::Network2::Mgmt::V2017_10_01::Models::DhGroup
          end
          def pfs_group
            Azure::Network2::Mgmt::V2017_10_01::Models::PfsGroup
          end
        end
      end
    end
  end
end
