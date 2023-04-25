# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Maintenance::Mgmt::V2018_06_01_preview
  #
  # Azure Maintenance Management Client
  #
  class ApplyUpdates
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ApplyUpdates class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [MaintenanceManagementClient] reference to the MaintenanceManagementClient
    attr_reader :client

    #
    # Track Updates to resource with parent
    #
    # Track maintenance updates to resource with parent
    #
    # @param resource_group_name [String] Resource group name
    # @param resource_parent_type [String] Resource parent type
    # @param resource_parent_name [String] Resource parent identifier
    # @param provider_name [String] Resource provider name
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param apply_update_name [String] applyUpdate Id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ApplyUpdate] operation results.
    #
    def get_parent(resource_group_name, resource_parent_type, resource_parent_name, provider_name, resource_type, resource_name, apply_update_name, custom_headers:nil)
      response = get_parent_async(resource_group_name, resource_parent_type, resource_parent_name, provider_name, resource_type, resource_name, apply_update_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Track Updates to resource with parent
    #
    # Track maintenance updates to resource with parent
    #
    # @param resource_group_name [String] Resource group name
    # @param resource_parent_type [String] Resource parent type
    # @param resource_parent_name [String] Resource parent identifier
    # @param provider_name [String] Resource provider name
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param apply_update_name [String] applyUpdate Id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_parent_with_http_info(resource_group_name, resource_parent_type, resource_parent_name, provider_name, resource_type, resource_name, apply_update_name, custom_headers:nil)
      get_parent_async(resource_group_name, resource_parent_type, resource_parent_name, provider_name, resource_type, resource_name, apply_update_name, custom_headers:custom_headers).value!
    end

    #
    # Track Updates to resource with parent
    #
    # Track maintenance updates to resource with parent
    #
    # @param resource_group_name [String] Resource group name
    # @param resource_parent_type [String] Resource parent type
    # @param resource_parent_name [String] Resource parent identifier
    # @param provider_name [String] Resource provider name
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param apply_update_name [String] applyUpdate Id
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_parent_async(resource_group_name, resource_parent_type, resource_parent_name, provider_name, resource_type, resource_name, apply_update_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'resource_parent_type is nil' if resource_parent_type.nil?
      fail ArgumentError, 'resource_parent_name is nil' if resource_parent_name.nil?
      fail ArgumentError, 'provider_name is nil' if provider_name.nil?
      fail ArgumentError, 'resource_type is nil' if resource_type.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, 'apply_update_name is nil' if apply_update_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{providerName}/{resourceParentType}/{resourceParentName}/{resourceType}/{resourceName}/providers/Microsoft.Maintenance/applyUpdates/{applyUpdateName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'resourceParentType' => resource_parent_type,'resourceParentName' => resource_parent_name,'providerName' => provider_name,'resourceType' => resource_type,'resourceName' => resource_name,'applyUpdateName' => apply_update_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

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
            result_mapper = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ApplyUpdate.mapper()
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
    # Track Updates to resource
    #
    # Track maintenance updates to resource
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param apply_update_name [String] applyUpdate Id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ApplyUpdate] operation results.
    #
    def get(resource_group_name, provider_name, resource_type, resource_name, apply_update_name, custom_headers:nil)
      response = get_async(resource_group_name, provider_name, resource_type, resource_name, apply_update_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Track Updates to resource
    #
    # Track maintenance updates to resource
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param apply_update_name [String] applyUpdate Id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, provider_name, resource_type, resource_name, apply_update_name, custom_headers:nil)
      get_async(resource_group_name, provider_name, resource_type, resource_name, apply_update_name, custom_headers:custom_headers).value!
    end

    #
    # Track Updates to resource
    #
    # Track maintenance updates to resource
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param apply_update_name [String] applyUpdate Id
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, provider_name, resource_type, resource_name, apply_update_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'provider_name is nil' if provider_name.nil?
      fail ArgumentError, 'resource_type is nil' if resource_type.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, 'apply_update_name is nil' if apply_update_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{providerName}/{resourceType}/{resourceName}/providers/Microsoft.Maintenance/applyUpdates/{applyUpdateName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'providerName' => provider_name,'resourceType' => resource_type,'resourceName' => resource_name,'applyUpdateName' => apply_update_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

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
            result_mapper = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ApplyUpdate.mapper()
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
    # Apply Updates to resource with parent
    #
    # Apply maintenance updates to resource with parent
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_parent_type [String] Resource parent type
    # @param resource_parent_name [String] Resource parent identifier
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ApplyUpdate] operation results.
    #
    def create_or_update_parent(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, custom_headers:nil)
      response = create_or_update_parent_async(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Apply Updates to resource with parent
    #
    # Apply maintenance updates to resource with parent
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_parent_type [String] Resource parent type
    # @param resource_parent_name [String] Resource parent identifier
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_parent_with_http_info(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, custom_headers:nil)
      create_or_update_parent_async(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, custom_headers:custom_headers).value!
    end

    #
    # Apply Updates to resource with parent
    #
    # Apply maintenance updates to resource with parent
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_parent_type [String] Resource parent type
    # @param resource_parent_name [String] Resource parent identifier
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_parent_async(resource_group_name, provider_name, resource_parent_type, resource_parent_name, resource_type, resource_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'provider_name is nil' if provider_name.nil?
      fail ArgumentError, 'resource_parent_type is nil' if resource_parent_type.nil?
      fail ArgumentError, 'resource_parent_name is nil' if resource_parent_name.nil?
      fail ArgumentError, 'resource_type is nil' if resource_type.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{providerName}/{resourceParentType}/{resourceParentName}/{resourceType}/{resourceName}/providers/Microsoft.Maintenance/applyUpdates/default'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'providerName' => provider_name,'resourceParentType' => resource_parent_type,'resourceParentName' => resource_parent_name,'resourceType' => resource_type,'resourceName' => resource_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

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
            result_mapper = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ApplyUpdate.mapper()
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
    # Apply Updates to resource
    #
    # Apply maintenance updates to resource
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ApplyUpdate] operation results.
    #
    def create_or_update(resource_group_name, provider_name, resource_type, resource_name, custom_headers:nil)
      response = create_or_update_async(resource_group_name, provider_name, resource_type, resource_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Apply Updates to resource
    #
    # Apply maintenance updates to resource
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, provider_name, resource_type, resource_name, custom_headers:nil)
      create_or_update_async(resource_group_name, provider_name, resource_type, resource_name, custom_headers:custom_headers).value!
    end

    #
    # Apply Updates to resource
    #
    # Apply maintenance updates to resource
    #
    # @param resource_group_name [String] Resource group name
    # @param provider_name [String] Resource provider name
    # @param resource_type [String] Resource type
    # @param resource_name [String] Resource identifier
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, provider_name, resource_type, resource_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'provider_name is nil' if provider_name.nil?
      fail ArgumentError, 'resource_type is nil' if resource_type.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{providerName}/{resourceType}/{resourceName}/providers/Microsoft.Maintenance/applyUpdates/default'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'providerName' => provider_name,'resourceType' => resource_type,'resourceName' => resource_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

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
            result_mapper = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ApplyUpdate.mapper()
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
