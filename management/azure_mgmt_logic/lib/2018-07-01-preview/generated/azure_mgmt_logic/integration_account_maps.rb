# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2018_07_01_preview
  #
  # REST API for Azure Logic Apps.
  #
  class IntegrationAccountMaps
    include MsRestAzure

    #
    # Creates and initializes a new instance of the IntegrationAccountMaps class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [LogicManagementClient] reference to the LogicManagementClient
    attr_reader :client

    #
    # Gets a list of integration account maps.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param top [Integer] The number of items to be included in the result.
    # @param filter [String] The filter to apply on the operation. Options for
    # filters include: MapType.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<IntegrationAccountMap>] operation results.
    #
    def list(resource_group_name, integration_account_name, top:nil, filter:nil, custom_headers:nil)
      first_page = list_as_lazy(resource_group_name, integration_account_name, top:top, filter:filter, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Gets a list of integration account maps.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param top [Integer] The number of items to be included in the result.
    # @param filter [String] The filter to apply on the operation. Options for
    # filters include: MapType.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, integration_account_name, top:nil, filter:nil, custom_headers:nil)
      list_async(resource_group_name, integration_account_name, top:top, filter:filter, custom_headers:custom_headers).value!
    end

    #
    # Gets a list of integration account maps.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param top [Integer] The number of items to be included in the result.
    # @param filter [String] The filter to apply on the operation. Options for
    # filters include: MapType.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, integration_account_name, top:nil, filter:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'integration_account_name is nil' if integration_account_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/maps'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'integrationAccountName' => integration_account_name},
          query_params: {'api-version' => @client.api_version,'$top' => top,'$filter' => filter},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountMapListResult.mapper()
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
    # Gets an integration account map.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param map_name [String] The integration account map name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IntegrationAccountMap] operation results.
    #
    def get(resource_group_name, integration_account_name, map_name, custom_headers:nil)
      response = get_async(resource_group_name, integration_account_name, map_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets an integration account map.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param map_name [String] The integration account map name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, integration_account_name, map_name, custom_headers:nil)
      get_async(resource_group_name, integration_account_name, map_name, custom_headers:custom_headers).value!
    end

    #
    # Gets an integration account map.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param map_name [String] The integration account map name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, integration_account_name, map_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'integration_account_name is nil' if integration_account_name.nil?
      fail ArgumentError, 'map_name is nil' if map_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/maps/{mapName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'integrationAccountName' => integration_account_name,'mapName' => map_name},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountMap.mapper()
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
    # Creates or updates an integration account map.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param map_name [String] The integration account map name.
    # @param map [IntegrationAccountMap] The integration account map.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IntegrationAccountMap] operation results.
    #
    def create_or_update(resource_group_name, integration_account_name, map_name, map, custom_headers:nil)
      response = create_or_update_async(resource_group_name, integration_account_name, map_name, map, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates an integration account map.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param map_name [String] The integration account map name.
    # @param map [IntegrationAccountMap] The integration account map.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, integration_account_name, map_name, map, custom_headers:nil)
      create_or_update_async(resource_group_name, integration_account_name, map_name, map, custom_headers:custom_headers).value!
    end

    #
    # Creates or updates an integration account map.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param map_name [String] The integration account map name.
    # @param map [IntegrationAccountMap] The integration account map.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, integration_account_name, map_name, map, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'integration_account_name is nil' if integration_account_name.nil?
      fail ArgumentError, 'map_name is nil' if map_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'map is nil' if map.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountMap.mapper()
      request_content = @client.serialize(request_mapper,  map)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/maps/{mapName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'integrationAccountName' => integration_account_name,'mapName' => map_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountMap.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest2::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountMap.mapper()
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
    # Deletes an integration account map.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param map_name [String] The integration account map name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, integration_account_name, map_name, custom_headers:nil)
      response = delete_async(resource_group_name, integration_account_name, map_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes an integration account map.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param map_name [String] The integration account map name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, integration_account_name, map_name, custom_headers:nil)
      delete_async(resource_group_name, integration_account_name, map_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes an integration account map.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param map_name [String] The integration account map name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, integration_account_name, map_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'integration_account_name is nil' if integration_account_name.nil?
      fail ArgumentError, 'map_name is nil' if map_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/maps/{mapName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'integrationAccountName' => integration_account_name,'mapName' => map_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Get the content callback url.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param map_name [String] The integration account map name.
    # @param list_content_callback_url [GetCallbackUrlParameters]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [WorkflowTriggerCallbackUrl] operation results.
    #
    def list_content_callback_url(resource_group_name, integration_account_name, map_name, list_content_callback_url, custom_headers:nil)
      response = list_content_callback_url_async(resource_group_name, integration_account_name, map_name, list_content_callback_url, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the content callback url.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param map_name [String] The integration account map name.
    # @param list_content_callback_url [GetCallbackUrlParameters]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_content_callback_url_with_http_info(resource_group_name, integration_account_name, map_name, list_content_callback_url, custom_headers:nil)
      list_content_callback_url_async(resource_group_name, integration_account_name, map_name, list_content_callback_url, custom_headers:custom_headers).value!
    end

    #
    # Get the content callback url.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param map_name [String] The integration account map name.
    # @param list_content_callback_url [GetCallbackUrlParameters]
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_content_callback_url_async(resource_group_name, integration_account_name, map_name, list_content_callback_url, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'integration_account_name is nil' if integration_account_name.nil?
      fail ArgumentError, 'map_name is nil' if map_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'list_content_callback_url is nil' if list_content_callback_url.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Logic::Mgmt::V2018_07_01_preview::Models::GetCallbackUrlParameters.mapper()
      request_content = @client.serialize(request_mapper,  list_content_callback_url)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/maps/{mapName}/listContentCallbackUrl'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'integrationAccountName' => integration_account_name,'mapName' => map_name},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerCallbackUrl.mapper()
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
    # Gets a list of integration account maps.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IntegrationAccountMapListResult] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a list of integration account maps.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers:nil)
      list_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Gets a list of integration account maps.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountMapListResult.mapper()
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
    # Gets a list of integration account maps.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param top [Integer] The number of items to be included in the result.
    # @param filter [String] The filter to apply on the operation. Options for
    # filters include: MapType.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IntegrationAccountMapListResult] which provide lazy access to pages
    # of the response.
    #
    def list_as_lazy(resource_group_name, integration_account_name, top:nil, filter:nil, custom_headers:nil)
      response = list_async(resource_group_name, integration_account_name, top:top, filter:filter, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
