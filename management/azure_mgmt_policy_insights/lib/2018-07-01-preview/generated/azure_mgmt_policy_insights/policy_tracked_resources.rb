# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PolicyInsights::Mgmt::V2018_07_01_preview
  #
  # PolicyTrackedResources
  #
  class PolicyTrackedResources
    include MsRestAzure

    #
    # Creates and initializes a new instance of the PolicyTrackedResources class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [PolicyInsightsClient] reference to the PolicyInsightsClient
    attr_reader :client

    #
    # Queries policy tracked resources under the management group.
    #
    # @param management_group_name [String] Management group name.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<PolicyTrackedResource>] operation results.
    #
    def list_query_results_for_management_group(management_group_name, query_options:nil, custom_headers:nil)
      first_page = list_query_results_for_management_group_as_lazy(management_group_name, query_options:query_options, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Queries policy tracked resources under the management group.
    #
    # @param management_group_name [String] Management group name.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_query_results_for_management_group_with_http_info(management_group_name, query_options:nil, custom_headers:nil)
      list_query_results_for_management_group_async(management_group_name, query_options:query_options, custom_headers:custom_headers).value!
    end

    #
    # Queries policy tracked resources under the management group.
    #
    # @param management_group_name [String] Management group name.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_query_results_for_management_group_async(management_group_name, query_options:nil, custom_headers:nil)
      management_groups_namespace = 'Microsoft.Management'
      fail ArgumentError, 'management_group_name is nil' if management_group_name.nil?
      policy_tracked_resources_resource = 'default'
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?

      top = nil
      filter = nil
      unless query_options.nil?
        top = query_options.Top
      end
      unless query_options.nil?
        filter = query_options.Filter
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/{managementGroupsNamespace}/managementGroups/{managementGroupName}/providers/Microsoft.PolicyInsights/policyTrackedResources/{policyTrackedResourcesResource}/queryResults'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'managementGroupsNamespace' => management_groups_namespace,'managementGroupName' => management_group_name,'policyTrackedResourcesResource' => policy_tracked_resources_resource},
          query_params: {'api-version' => @client.api_version,'$top' => top,'$filter' => filter},
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
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyTrackedResourcesQueryResults.mapper()
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
    # Queries policy tracked resources under the subscription.
    #
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<PolicyTrackedResource>] operation results.
    #
    def list_query_results_for_subscription(query_options:nil, custom_headers:nil)
      first_page = list_query_results_for_subscription_as_lazy(query_options:query_options, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Queries policy tracked resources under the subscription.
    #
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_query_results_for_subscription_with_http_info(query_options:nil, custom_headers:nil)
      list_query_results_for_subscription_async(query_options:query_options, custom_headers:custom_headers).value!
    end

    #
    # Queries policy tracked resources under the subscription.
    #
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_query_results_for_subscription_async(query_options:nil, custom_headers:nil)
      policy_tracked_resources_resource = 'default'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?

      top = nil
      filter = nil
      unless query_options.nil?
        top = query_options.Top
      end
      unless query_options.nil?
        filter = query_options.Filter
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.PolicyInsights/policyTrackedResources/{policyTrackedResourcesResource}/queryResults'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'policyTrackedResourcesResource' => policy_tracked_resources_resource,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version,'$top' => top,'$filter' => filter},
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
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyTrackedResourcesQueryResults.mapper()
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
    # Queries policy tracked resources under the resource group.
    #
    # @param resource_group_name [String] Resource group name.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<PolicyTrackedResource>] operation results.
    #
    def list_query_results_for_resource_group(resource_group_name, query_options:nil, custom_headers:nil)
      first_page = list_query_results_for_resource_group_as_lazy(resource_group_name, query_options:query_options, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Queries policy tracked resources under the resource group.
    #
    # @param resource_group_name [String] Resource group name.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_query_results_for_resource_group_with_http_info(resource_group_name, query_options:nil, custom_headers:nil)
      list_query_results_for_resource_group_async(resource_group_name, query_options:query_options, custom_headers:custom_headers).value!
    end

    #
    # Queries policy tracked resources under the resource group.
    #
    # @param resource_group_name [String] Resource group name.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_query_results_for_resource_group_async(resource_group_name, query_options:nil, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      policy_tracked_resources_resource = 'default'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?

      top = nil
      filter = nil
      unless query_options.nil?
        top = query_options.Top
      end
      unless query_options.nil?
        filter = query_options.Filter
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.PolicyInsights/policyTrackedResources/{policyTrackedResourcesResource}/queryResults'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'policyTrackedResourcesResource' => policy_tracked_resources_resource,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version,'$top' => top,'$filter' => filter},
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
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyTrackedResourcesQueryResults.mapper()
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
    # Queries policy tracked resources under the resource.
    #
    # @param resource_id [String] Resource ID.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<PolicyTrackedResource>] operation results.
    #
    def list_query_results_for_resource(resource_id, query_options:nil, custom_headers:nil)
      first_page = list_query_results_for_resource_as_lazy(resource_id, query_options:query_options, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Queries policy tracked resources under the resource.
    #
    # @param resource_id [String] Resource ID.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_query_results_for_resource_with_http_info(resource_id, query_options:nil, custom_headers:nil)
      list_query_results_for_resource_async(resource_id, query_options:query_options, custom_headers:custom_headers).value!
    end

    #
    # Queries policy tracked resources under the resource.
    #
    # @param resource_id [String] Resource ID.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_query_results_for_resource_async(resource_id, query_options:nil, custom_headers:nil)
      fail ArgumentError, 'resource_id is nil' if resource_id.nil?
      policy_tracked_resources_resource = 'default'
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?

      top = nil
      filter = nil
      unless query_options.nil?
        top = query_options.Top
      end
      unless query_options.nil?
        filter = query_options.Filter
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{resourceId}/providers/Microsoft.PolicyInsights/policyTrackedResources/{policyTrackedResourcesResource}/queryResults'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'policyTrackedResourcesResource' => policy_tracked_resources_resource},
          skip_encoding_path_params: {'resourceId' => resource_id},
          query_params: {'api-version' => @client.api_version,'$top' => top,'$filter' => filter},
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
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyTrackedResourcesQueryResults.mapper()
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
    # Queries policy tracked resources under the management group.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PolicyTrackedResourcesQueryResults] operation results.
    #
    def list_query_results_for_management_group_next(next_page_link, custom_headers:nil)
      response = list_query_results_for_management_group_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Queries policy tracked resources under the management group.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_query_results_for_management_group_next_with_http_info(next_page_link, custom_headers:nil)
      list_query_results_for_management_group_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Queries policy tracked resources under the management group.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_query_results_for_management_group_next_async(next_page_link, custom_headers:nil)
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
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyTrackedResourcesQueryResults.mapper()
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
    # Queries policy tracked resources under the subscription.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PolicyTrackedResourcesQueryResults] operation results.
    #
    def list_query_results_for_subscription_next(next_page_link, custom_headers:nil)
      response = list_query_results_for_subscription_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Queries policy tracked resources under the subscription.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_query_results_for_subscription_next_with_http_info(next_page_link, custom_headers:nil)
      list_query_results_for_subscription_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Queries policy tracked resources under the subscription.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_query_results_for_subscription_next_async(next_page_link, custom_headers:nil)
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
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyTrackedResourcesQueryResults.mapper()
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
    # Queries policy tracked resources under the resource group.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PolicyTrackedResourcesQueryResults] operation results.
    #
    def list_query_results_for_resource_group_next(next_page_link, custom_headers:nil)
      response = list_query_results_for_resource_group_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Queries policy tracked resources under the resource group.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_query_results_for_resource_group_next_with_http_info(next_page_link, custom_headers:nil)
      list_query_results_for_resource_group_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Queries policy tracked resources under the resource group.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_query_results_for_resource_group_next_async(next_page_link, custom_headers:nil)
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
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyTrackedResourcesQueryResults.mapper()
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
    # Queries policy tracked resources under the resource.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PolicyTrackedResourcesQueryResults] operation results.
    #
    def list_query_results_for_resource_next(next_page_link, custom_headers:nil)
      response = list_query_results_for_resource_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Queries policy tracked resources under the resource.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_query_results_for_resource_next_with_http_info(next_page_link, custom_headers:nil)
      list_query_results_for_resource_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Queries policy tracked resources under the resource.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_query_results_for_resource_next_async(next_page_link, custom_headers:nil)
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
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyTrackedResourcesQueryResults.mapper()
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
    # Queries policy tracked resources under the management group.
    #
    # @param management_group_name [String] Management group name.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PolicyTrackedResourcesQueryResults] which provide lazy access to
    # pages of the response.
    #
    def list_query_results_for_management_group_as_lazy(management_group_name, query_options:nil, custom_headers:nil)
      response = list_query_results_for_management_group_async(management_group_name, query_options:query_options, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_query_results_for_management_group_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

    #
    # Queries policy tracked resources under the subscription.
    #
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PolicyTrackedResourcesQueryResults] which provide lazy access to
    # pages of the response.
    #
    def list_query_results_for_subscription_as_lazy(query_options:nil, custom_headers:nil)
      response = list_query_results_for_subscription_async(query_options:query_options, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_query_results_for_subscription_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

    #
    # Queries policy tracked resources under the resource group.
    #
    # @param resource_group_name [String] Resource group name.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PolicyTrackedResourcesQueryResults] which provide lazy access to
    # pages of the response.
    #
    def list_query_results_for_resource_group_as_lazy(resource_group_name, query_options:nil, custom_headers:nil)
      response = list_query_results_for_resource_group_async(resource_group_name, query_options:query_options, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_query_results_for_resource_group_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

    #
    # Queries policy tracked resources under the resource.
    #
    # @param resource_id [String] Resource ID.
    # @param query_options [QueryOptions] Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PolicyTrackedResourcesQueryResults] which provide lazy access to
    # pages of the response.
    #
    def list_query_results_for_resource_as_lazy(resource_id, query_options:nil, custom_headers:nil)
      response = list_query_results_for_resource_async(resource_id, query_options:query_options, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_query_results_for_resource_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
