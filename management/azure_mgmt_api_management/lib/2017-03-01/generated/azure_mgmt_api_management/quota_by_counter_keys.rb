# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2017_03_01
  #
  # ApiManagement Client
  #
  class QuotaByCounterKeys
    include MsRestAzure

    #
    # Creates and initializes a new instance of the QuotaByCounterKeys class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ApiManagementClient] reference to the ApiManagementClient
    attr_reader :client

    #
    # Lists a collection of current quota counter periods associated with the
    # counter-key configured in the policy on the specified service instance. The
    # api does not support paging yet.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param quota_counter_key [String] Quota counter key identifier.This is the
    # result of expression defined in counter-key attribute of the quota-by-key
    # policy.For Example, if you specify counter-key="boo" in the policy, then it’s
    # accessible by "boo" counter key. But if it’s defined as
    # counter-key="@("b"+"a")" then it will be accessible by "ba" key
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [QuotaCounterCollection] operation results.
    #
    def list_by_service(resource_group_name, service_name, quota_counter_key, custom_headers:nil)
      response = list_by_service_async(resource_group_name, service_name, quota_counter_key, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists a collection of current quota counter periods associated with the
    # counter-key configured in the policy on the specified service instance. The
    # api does not support paging yet.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param quota_counter_key [String] Quota counter key identifier.This is the
    # result of expression defined in counter-key attribute of the quota-by-key
    # policy.For Example, if you specify counter-key="boo" in the policy, then it’s
    # accessible by "boo" counter key. But if it’s defined as
    # counter-key="@("b"+"a")" then it will be accessible by "ba" key
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_service_with_http_info(resource_group_name, service_name, quota_counter_key, custom_headers:nil)
      list_by_service_async(resource_group_name, service_name, quota_counter_key, custom_headers:custom_headers).value!
    end

    #
    # Lists a collection of current quota counter periods associated with the
    # counter-key configured in the policy on the specified service instance. The
    # api does not support paging yet.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param quota_counter_key [String] Quota counter key identifier.This is the
    # result of expression defined in counter-key attribute of the quota-by-key
    # policy.For Example, if you specify counter-key="boo" in the policy, then it’s
    # accessible by "boo" counter key. But if it’s defined as
    # counter-key="@("b"+"a")" then it will be accessible by "ba" key
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_service_async(resource_group_name, service_name, quota_counter_key, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'quota_counter_key is nil' if quota_counter_key.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/quotas/{quotaCounterKey}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'serviceName' => service_name,'quotaCounterKey' => quota_counter_key},
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
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ApiManagement::Mgmt::V2017_03_01::Models::QuotaCounterCollection.mapper()
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
    # Updates all the quota counter values specified with the existing quota
    # counter key to a value in the specified service instance. This should be used
    # for reset of the quota counter values.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param quota_counter_key [String] Quota counter key identifier.This is the
    # result of expression defined in counter-key attribute of the quota-by-key
    # policy.For Example, if you specify counter-key="boo" in the policy, then it’s
    # accessible by "boo" counter key. But if it’s defined as
    # counter-key="@("b"+"a")" then it will be accessible by "ba" key
    # @param parameters [QuotaCounterValueContractProperties] The value of the
    # quota counter to be applied to all quota counter periods.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def update(resource_group_name, service_name, quota_counter_key, parameters, custom_headers:nil)
      response = update_async(resource_group_name, service_name, quota_counter_key, parameters, custom_headers:custom_headers).value!
      nil
    end

    #
    # Updates all the quota counter values specified with the existing quota
    # counter key to a value in the specified service instance. This should be used
    # for reset of the quota counter values.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param quota_counter_key [String] Quota counter key identifier.This is the
    # result of expression defined in counter-key attribute of the quota-by-key
    # policy.For Example, if you specify counter-key="boo" in the policy, then it’s
    # accessible by "boo" counter key. But if it’s defined as
    # counter-key="@("b"+"a")" then it will be accessible by "ba" key
    # @param parameters [QuotaCounterValueContractProperties] The value of the
    # quota counter to be applied to all quota counter periods.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(resource_group_name, service_name, quota_counter_key, parameters, custom_headers:nil)
      update_async(resource_group_name, service_name, quota_counter_key, parameters, custom_headers:custom_headers).value!
    end

    #
    # Updates all the quota counter values specified with the existing quota
    # counter key to a value in the specified service instance. This should be used
    # for reset of the quota counter values.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param quota_counter_key [String] Quota counter key identifier.This is the
    # result of expression defined in counter-key attribute of the quota-by-key
    # policy.For Example, if you specify counter-key="boo" in the policy, then it’s
    # accessible by "boo" counter key. But if it’s defined as
    # counter-key="@("b"+"a")" then it will be accessible by "ba" key
    # @param parameters [QuotaCounterValueContractProperties] The value of the
    # quota counter to be applied to all quota counter periods.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(resource_group_name, service_name, quota_counter_key, parameters, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'quota_counter_key is nil' if quota_counter_key.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::ApiManagement::Mgmt::V2017_03_01::Models::QuotaCounterValueContractProperties.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/quotas/{quotaCounterKey}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'quotaCounterKey' => quota_counter_key,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:patch, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
