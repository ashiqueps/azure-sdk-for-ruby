# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  #
  # Azure Synapse Analytics Management Client
  #
  class IntegrationRuntimeObjectMetadata
    include MsRestAzure

    #
    # Creates and initializes a new instance of the IntegrationRuntimeObjectMetadata class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SynapseManagementClient] reference to the SynapseManagementClient
    attr_reader :client

    #
    # Get integration runtime object metadata
    #
    # Get object metadata from an integration runtime
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param integration_runtime_name [String] Integration runtime name
    # @param get_metadata_request [GetSsisObjectMetadataRequest] The parameters for
    # getting a SSIS object metadata.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SsisObjectMetadataListResponse] operation results.
    #
    def list(resource_group_name, workspace_name, integration_runtime_name, get_metadata_request:nil, custom_headers:nil)
      response = list_async(resource_group_name, workspace_name, integration_runtime_name, get_metadata_request:get_metadata_request, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get integration runtime object metadata
    #
    # Get object metadata from an integration runtime
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param integration_runtime_name [String] Integration runtime name
    # @param get_metadata_request [GetSsisObjectMetadataRequest] The parameters for
    # getting a SSIS object metadata.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, workspace_name, integration_runtime_name, get_metadata_request:nil, custom_headers:nil)
      list_async(resource_group_name, workspace_name, integration_runtime_name, get_metadata_request:get_metadata_request, custom_headers:custom_headers).value!
    end

    #
    # Get integration runtime object metadata
    #
    # Get object metadata from an integration runtime
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param integration_runtime_name [String] Integration runtime name
    # @param get_metadata_request [GetSsisObjectMetadataRequest] The parameters for
    # getting a SSIS object metadata.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, workspace_name, integration_runtime_name, get_metadata_request:nil, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, "'@client.api_version' should satisfy the constraint - 'MinLength': '1'" if !@client.api_version.nil? && @client.api_version.length < 1
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'MinLength': '1'" if !@client.subscription_id.nil? && @client.subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, 'integration_runtime_name is nil' if integration_runtime_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::GetSsisObjectMetadataRequest.mapper()
      request_content = @client.serialize(request_mapper,  get_metadata_request)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/integrationRuntimes/{integrationRuntimeName}/getObjectMetadata'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'integrationRuntimeName' => integration_runtime_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisObjectMetadataListResponse.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest2::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Refresh integration runtime object metadata
    #
    # Refresh the object metadata in an integration runtime
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param integration_runtime_name [String] Integration runtime name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SsisObjectMetadataStatusResponse] operation results.
    #
    def refresh(resource_group_name, workspace_name, integration_runtime_name, custom_headers:nil)
      response = refresh_async(resource_group_name, workspace_name, integration_runtime_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param integration_runtime_name [String] Integration runtime name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def refresh_async(resource_group_name, workspace_name, integration_runtime_name, custom_headers:nil)
      # Send request
      promise = begin_refresh_async(resource_group_name, workspace_name, integration_runtime_name, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisObjectMetadataStatusResponse.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Refresh integration runtime object metadata
    #
    # Refresh the object metadata in an integration runtime
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param integration_runtime_name [String] Integration runtime name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SsisObjectMetadataStatusResponse] operation results.
    #
    def begin_refresh(resource_group_name, workspace_name, integration_runtime_name, custom_headers:nil)
      response = begin_refresh_async(resource_group_name, workspace_name, integration_runtime_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Refresh integration runtime object metadata
    #
    # Refresh the object metadata in an integration runtime
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param integration_runtime_name [String] Integration runtime name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_refresh_with_http_info(resource_group_name, workspace_name, integration_runtime_name, custom_headers:nil)
      begin_refresh_async(resource_group_name, workspace_name, integration_runtime_name, custom_headers:custom_headers).value!
    end

    #
    # Refresh integration runtime object metadata
    #
    # Refresh the object metadata in an integration runtime
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param integration_runtime_name [String] Integration runtime name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_refresh_async(resource_group_name, workspace_name, integration_runtime_name, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, "'@client.api_version' should satisfy the constraint - 'MinLength': '1'" if !@client.api_version.nil? && @client.api_version.length < 1
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'MinLength': '1'" if !@client.subscription_id.nil? && @client.subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, 'integration_runtime_name is nil' if integration_runtime_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/integrationRuntimes/{integrationRuntimeName}/refreshObjectMetadata'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'integrationRuntimeName' => integration_runtime_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Synapse::Mgmt::V2019_06_01_preview::Models::SsisObjectMetadataStatusResponse.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest2::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
