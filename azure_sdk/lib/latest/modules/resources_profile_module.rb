# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_resources2'

module Azure::Profiles::Latest
  module Resources
    module Mgmt
      Operations = Azure::Resources2::Mgmt::V2019_07_01::Operations
      Deployments = Azure::Resources2::Mgmt::V2019_07_01::Deployments
      Providers = Azure::Resources2::Mgmt::V2019_07_01::Providers
      Resources = Azure::Resources2::Mgmt::V2019_07_01::Resources
      ResourceGroups = Azure::Resources2::Mgmt::V2019_07_01::ResourceGroups
      Tags = Azure::Resources2::Mgmt::V2019_07_01::Tags
      DeploymentOperations = Azure::Resources2::Mgmt::V2019_07_01::DeploymentOperations

      module Models
        Sku = Azure::Resources2::Mgmt::V2019_07_01::Models::Sku
        IdentityUserAssignedIdentitiesValue = Azure::Resources2::Mgmt::V2019_07_01::Models::IdentityUserAssignedIdentitiesValue
        GenericResourceFilter = Azure::Resources2::Mgmt::V2019_07_01::Models::GenericResourceFilter
        Identity = Azure::Resources2::Mgmt::V2019_07_01::Models::Identity
        TemplateLink = Azure::Resources2::Mgmt::V2019_07_01::Models::TemplateLink
        ParametersLink = Azure::Resources2::Mgmt::V2019_07_01::Models::ParametersLink
        WhatIfOperationResult = Azure::Resources2::Mgmt::V2019_07_01::Models::WhatIfOperationResult
        OnErrorDeployment = Azure::Resources2::Mgmt::V2019_07_01::Models::OnErrorDeployment
        ResourceListResult = Azure::Resources2::Mgmt::V2019_07_01::Models::ResourceListResult
        Deployment = Azure::Resources2::Mgmt::V2019_07_01::Models::Deployment
        ResourceGroupProperties = Azure::Resources2::Mgmt::V2019_07_01::Models::ResourceGroupProperties
        DeploymentWhatIfSettings = Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentWhatIfSettings
        ResourceGroup = Azure::Resources2::Mgmt::V2019_07_01::Models::ResourceGroup
        DeploymentWhatIf = Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentWhatIf
        ResourceGroupPatchable = Azure::Resources2::Mgmt::V2019_07_01::Models::ResourceGroupPatchable
        ErrorResponse = Azure::Resources2::Mgmt::V2019_07_01::Models::ErrorResponse
        ResourceGroupListResult = Azure::Resources2::Mgmt::V2019_07_01::Models::ResourceGroupListResult
        AliasPathType = Azure::Resources2::Mgmt::V2019_07_01::Models::AliasPathType
        ResourcesMoveInfo = Azure::Resources2::Mgmt::V2019_07_01::Models::ResourcesMoveInfo
        ProviderResourceType = Azure::Resources2::Mgmt::V2019_07_01::Models::ProviderResourceType
        ExportTemplateRequest = Azure::Resources2::Mgmt::V2019_07_01::Models::ExportTemplateRequest
        BasicDependency = Azure::Resources2::Mgmt::V2019_07_01::Models::BasicDependency
        TagCount = Azure::Resources2::Mgmt::V2019_07_01::Models::TagCount
        OnErrorDeploymentExtended = Azure::Resources2::Mgmt::V2019_07_01::Models::OnErrorDeploymentExtended
        TagValue = Azure::Resources2::Mgmt::V2019_07_01::Models::TagValue
        DeploymentValidateResult = Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentValidateResult
        TagDetails = Azure::Resources2::Mgmt::V2019_07_01::Models::TagDetails
        DeploymentListResult = Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentListResult
        TagsListResult = Azure::Resources2::Mgmt::V2019_07_01::Models::TagsListResult
        Plan = Azure::Resources2::Mgmt::V2019_07_01::Models::Plan
        TargetResource = Azure::Resources2::Mgmt::V2019_07_01::Models::TargetResource
        ResourceGroupFilter = Azure::Resources2::Mgmt::V2019_07_01::Models::ResourceGroupFilter
        HttpMessage = Azure::Resources2::Mgmt::V2019_07_01::Models::HttpMessage
        DeploymentProperties = Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentProperties
        DeploymentOperationProperties = Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentOperationProperties
        WhatIfChange = Azure::Resources2::Mgmt::V2019_07_01::Models::WhatIfChange
        ErrorAdditionalInfo = Azure::Resources2::Mgmt::V2019_07_01::Models::ErrorAdditionalInfo
        DeploymentOperation = Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentOperation
        AliasType = Azure::Resources2::Mgmt::V2019_07_01::Models::AliasType
        DeploymentOperationsListResult = Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentOperationsListResult
        Dependency = Azure::Resources2::Mgmt::V2019_07_01::Models::Dependency
        ResourceProviderOperationDisplayProperties = Azure::Resources2::Mgmt::V2019_07_01::Models::ResourceProviderOperationDisplayProperties
        DeploymentExtended = Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentExtended
        Resource = Azure::Resources2::Mgmt::V2019_07_01::Models::Resource
        DeploymentExtendedFilter = Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentExtendedFilter
        SubResource = Azure::Resources2::Mgmt::V2019_07_01::Models::SubResource
        DeploymentExportResult = Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentExportResult
        ResourceGroupExportResult = Azure::Resources2::Mgmt::V2019_07_01::Models::ResourceGroupExportResult
        Provider = Azure::Resources2::Mgmt::V2019_07_01::Models::Provider
        OperationDisplay = Azure::Resources2::Mgmt::V2019_07_01::Models::OperationDisplay
        ProviderListResult = Azure::Resources2::Mgmt::V2019_07_01::Models::ProviderListResult
        Operation = Azure::Resources2::Mgmt::V2019_07_01::Models::Operation
        OperationListResult = Azure::Resources2::Mgmt::V2019_07_01::Models::OperationListResult
        DebugSetting = Azure::Resources2::Mgmt::V2019_07_01::Models::DebugSetting
        TemplateHashResult = Azure::Resources2::Mgmt::V2019_07_01::Models::TemplateHashResult
        DeploymentPropertiesExtended = Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentPropertiesExtended
        WhatIfPropertyChange = Azure::Resources2::Mgmt::V2019_07_01::Models::WhatIfPropertyChange
        DeploymentWhatIfProperties = Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentWhatIfProperties
        GenericResource = Azure::Resources2::Mgmt::V2019_07_01::Models::GenericResource
        DeploymentMode = Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentMode
        OnErrorDeploymentType = Azure::Resources2::Mgmt::V2019_07_01::Models::OnErrorDeploymentType
        WhatIfResultFormat = Azure::Resources2::Mgmt::V2019_07_01::Models::WhatIfResultFormat
        ResourceIdentityType = Azure::Resources2::Mgmt::V2019_07_01::Models::ResourceIdentityType
        PropertyChangeType = Azure::Resources2::Mgmt::V2019_07_01::Models::PropertyChangeType
        ChangeType = Azure::Resources2::Mgmt::V2019_07_01::Models::ChangeType
      end

      class ResourcesManagementClass
        attr_reader :operations, :deployments, :providers, :resources, :resource_groups, :tags, :deployment_operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Resources2::Mgmt::V2019_07_01::ResourceManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @deployments = @client_0.deployments
          @providers = @client_0.providers
          @resources = @client_0.resources
          @resource_groups = @client_0.resource_groups
          @tags = @client_0.tags
          @deployment_operations = @client_0.deployment_operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Resources/Mgmt"
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
          def sku
            Azure::Resources2::Mgmt::V2019_07_01::Models::Sku
          end
          def identity_user_assigned_identities_value
            Azure::Resources2::Mgmt::V2019_07_01::Models::IdentityUserAssignedIdentitiesValue
          end
          def generic_resource_filter
            Azure::Resources2::Mgmt::V2019_07_01::Models::GenericResourceFilter
          end
          def identity
            Azure::Resources2::Mgmt::V2019_07_01::Models::Identity
          end
          def template_link
            Azure::Resources2::Mgmt::V2019_07_01::Models::TemplateLink
          end
          def parameters_link
            Azure::Resources2::Mgmt::V2019_07_01::Models::ParametersLink
          end
          def what_if_operation_result
            Azure::Resources2::Mgmt::V2019_07_01::Models::WhatIfOperationResult
          end
          def on_error_deployment
            Azure::Resources2::Mgmt::V2019_07_01::Models::OnErrorDeployment
          end
          def resource_list_result
            Azure::Resources2::Mgmt::V2019_07_01::Models::ResourceListResult
          end
          def deployment
            Azure::Resources2::Mgmt::V2019_07_01::Models::Deployment
          end
          def resource_group_properties
            Azure::Resources2::Mgmt::V2019_07_01::Models::ResourceGroupProperties
          end
          def deployment_what_if_settings
            Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentWhatIfSettings
          end
          def resource_group
            Azure::Resources2::Mgmt::V2019_07_01::Models::ResourceGroup
          end
          def deployment_what_if
            Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentWhatIf
          end
          def resource_group_patchable
            Azure::Resources2::Mgmt::V2019_07_01::Models::ResourceGroupPatchable
          end
          def error_response
            Azure::Resources2::Mgmt::V2019_07_01::Models::ErrorResponse
          end
          def resource_group_list_result
            Azure::Resources2::Mgmt::V2019_07_01::Models::ResourceGroupListResult
          end
          def alias_path_type
            Azure::Resources2::Mgmt::V2019_07_01::Models::AliasPathType
          end
          def resources_move_info
            Azure::Resources2::Mgmt::V2019_07_01::Models::ResourcesMoveInfo
          end
          def provider_resource_type
            Azure::Resources2::Mgmt::V2019_07_01::Models::ProviderResourceType
          end
          def export_template_request
            Azure::Resources2::Mgmt::V2019_07_01::Models::ExportTemplateRequest
          end
          def basic_dependency
            Azure::Resources2::Mgmt::V2019_07_01::Models::BasicDependency
          end
          def tag_count
            Azure::Resources2::Mgmt::V2019_07_01::Models::TagCount
          end
          def on_error_deployment_extended
            Azure::Resources2::Mgmt::V2019_07_01::Models::OnErrorDeploymentExtended
          end
          def tag_value
            Azure::Resources2::Mgmt::V2019_07_01::Models::TagValue
          end
          def deployment_validate_result
            Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentValidateResult
          end
          def tag_details
            Azure::Resources2::Mgmt::V2019_07_01::Models::TagDetails
          end
          def deployment_list_result
            Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentListResult
          end
          def tags_list_result
            Azure::Resources2::Mgmt::V2019_07_01::Models::TagsListResult
          end
          def plan
            Azure::Resources2::Mgmt::V2019_07_01::Models::Plan
          end
          def target_resource
            Azure::Resources2::Mgmt::V2019_07_01::Models::TargetResource
          end
          def resource_group_filter
            Azure::Resources2::Mgmt::V2019_07_01::Models::ResourceGroupFilter
          end
          def http_message
            Azure::Resources2::Mgmt::V2019_07_01::Models::HttpMessage
          end
          def deployment_properties
            Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentProperties
          end
          def deployment_operation_properties
            Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentOperationProperties
          end
          def what_if_change
            Azure::Resources2::Mgmt::V2019_07_01::Models::WhatIfChange
          end
          def error_additional_info
            Azure::Resources2::Mgmt::V2019_07_01::Models::ErrorAdditionalInfo
          end
          def deployment_operation
            Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentOperation
          end
          def alias_type
            Azure::Resources2::Mgmt::V2019_07_01::Models::AliasType
          end
          def deployment_operations_list_result
            Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentOperationsListResult
          end
          def dependency
            Azure::Resources2::Mgmt::V2019_07_01::Models::Dependency
          end
          def resource_provider_operation_display_properties
            Azure::Resources2::Mgmt::V2019_07_01::Models::ResourceProviderOperationDisplayProperties
          end
          def deployment_extended
            Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentExtended
          end
          def resource
            Azure::Resources2::Mgmt::V2019_07_01::Models::Resource
          end
          def deployment_extended_filter
            Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentExtendedFilter
          end
          def sub_resource
            Azure::Resources2::Mgmt::V2019_07_01::Models::SubResource
          end
          def deployment_export_result
            Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentExportResult
          end
          def resource_group_export_result
            Azure::Resources2::Mgmt::V2019_07_01::Models::ResourceGroupExportResult
          end
          def provider
            Azure::Resources2::Mgmt::V2019_07_01::Models::Provider
          end
          def operation_display
            Azure::Resources2::Mgmt::V2019_07_01::Models::OperationDisplay
          end
          def provider_list_result
            Azure::Resources2::Mgmt::V2019_07_01::Models::ProviderListResult
          end
          def operation
            Azure::Resources2::Mgmt::V2019_07_01::Models::Operation
          end
          def operation_list_result
            Azure::Resources2::Mgmt::V2019_07_01::Models::OperationListResult
          end
          def debug_setting
            Azure::Resources2::Mgmt::V2019_07_01::Models::DebugSetting
          end
          def template_hash_result
            Azure::Resources2::Mgmt::V2019_07_01::Models::TemplateHashResult
          end
          def deployment_properties_extended
            Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentPropertiesExtended
          end
          def what_if_property_change
            Azure::Resources2::Mgmt::V2019_07_01::Models::WhatIfPropertyChange
          end
          def deployment_what_if_properties
            Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentWhatIfProperties
          end
          def generic_resource
            Azure::Resources2::Mgmt::V2019_07_01::Models::GenericResource
          end
          def deployment_mode
            Azure::Resources2::Mgmt::V2019_07_01::Models::DeploymentMode
          end
          def on_error_deployment_type
            Azure::Resources2::Mgmt::V2019_07_01::Models::OnErrorDeploymentType
          end
          def what_if_result_format
            Azure::Resources2::Mgmt::V2019_07_01::Models::WhatIfResultFormat
          end
          def resource_identity_type
            Azure::Resources2::Mgmt::V2019_07_01::Models::ResourceIdentityType
          end
          def property_change_type
            Azure::Resources2::Mgmt::V2019_07_01::Models::PropertyChangeType
          end
          def change_type
            Azure::Resources2::Mgmt::V2019_07_01::Models::ChangeType
          end
        end
      end
    end
  end
end
