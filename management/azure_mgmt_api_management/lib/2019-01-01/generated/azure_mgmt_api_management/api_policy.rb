# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_01_01
  #
  # ApiManagement Client
  #
  class ApiPolicy
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ApiPolicy class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ApiManagementClient] reference to the ApiManagementClient
    attr_reader :client

    #
    # Get the policy configuration at the API level.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API revision identifier. Must be unique in the current
    # API Management service instance. Non-current revision has ;rev=n as a suffix
    # where n is the revision number.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PolicyCollection] operation results.
    #
    def list_by_api(resource_group_name, service_name, api_id, custom_headers:nil)
      response = list_by_api_async(resource_group_name, service_name, api_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the policy configuration at the API level.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API revision identifier. Must be unique in the current
    # API Management service instance. Non-current revision has ;rev=n as a suffix
    # where n is the revision number.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_api_with_http_info(resource_group_name, service_name, api_id, custom_headers:nil)
      list_by_api_async(resource_group_name, service_name, api_id, custom_headers:custom_headers).value!
    end

    #
    # Get the policy configuration at the API level.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API revision identifier. Must be unique in the current
    # API Management service instance. Non-current revision has ;rev=n as a suffix
    # where n is the revision number.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_api_async(resource_group_name, service_name, api_id, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'api_id is nil' if api_id.nil?
      fail ArgumentError, "'api_id' should satisfy the constraint - 'MaxLength': '256'" if !api_id.nil? && api_id.length > 256
      fail ArgumentError, "'api_id' should satisfy the constraint - 'MinLength': '1'" if !api_id.nil? && api_id.length < 1
      fail ArgumentError, "'api_id' should satisfy the constraint - 'Pattern': '^[^*#&+:<>?]+$'" if !api_id.nil? && api_id.match(Regexp.new('^^[^*#&+:<>?]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/policies'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'apiId' => api_id,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PolicyCollection.mapper()
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
    # Gets the entity state (Etag) version of the API policy specified by its
    # identifier.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API revision identifier. Must be unique in the current
    # API Management service instance. Non-current revision has ;rev=n as a suffix
    # where n is the revision number.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def get_entity_tag(resource_group_name, service_name, api_id, custom_headers:nil)
      response = get_entity_tag_async(resource_group_name, service_name, api_id, custom_headers:custom_headers).value!
      nil
    end

    #
    # Gets the entity state (Etag) version of the API policy specified by its
    # identifier.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API revision identifier. Must be unique in the current
    # API Management service instance. Non-current revision has ;rev=n as a suffix
    # where n is the revision number.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_entity_tag_with_http_info(resource_group_name, service_name, api_id, custom_headers:nil)
      get_entity_tag_async(resource_group_name, service_name, api_id, custom_headers:custom_headers).value!
    end

    #
    # Gets the entity state (Etag) version of the API policy specified by its
    # identifier.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API revision identifier. Must be unique in the current
    # API Management service instance. Non-current revision has ;rev=n as a suffix
    # where n is the revision number.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_entity_tag_async(resource_group_name, service_name, api_id, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'api_id is nil' if api_id.nil?
      fail ArgumentError, "'api_id' should satisfy the constraint - 'MaxLength': '256'" if !api_id.nil? && api_id.length > 256
      fail ArgumentError, "'api_id' should satisfy the constraint - 'MinLength': '1'" if !api_id.nil? && api_id.length < 1
      fail ArgumentError, "'api_id' should satisfy the constraint - 'Pattern': '^[^*#&+:<>?]+$'" if !api_id.nil? && api_id.match(Regexp.new('^^[^*#&+:<>?]+$$')).nil?
      policy_id = 'policy'
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/policies/{policyId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'apiId' => api_id,'policyId' => policy_id,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:head, path_template, options)

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

        result
      end

      promise.execute
    end

    #
    # Get the policy configuration at the API level.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API revision identifier. Must be unique in the current
    # API Management service instance. Non-current revision has ;rev=n as a suffix
    # where n is the revision number.
    # @param format [PolicyExportFormat] Policy Export Format. Possible values
    # include: 'xml', 'rawxml'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PolicyContract] operation results.
    #
    def get(resource_group_name, service_name, api_id, format:nil, custom_headers:nil)
      response = get_async(resource_group_name, service_name, api_id, format:format, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the policy configuration at the API level.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API revision identifier. Must be unique in the current
    # API Management service instance. Non-current revision has ;rev=n as a suffix
    # where n is the revision number.
    # @param format [PolicyExportFormat] Policy Export Format. Possible values
    # include: 'xml', 'rawxml'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, service_name, api_id, format:nil, custom_headers:nil)
      get_async(resource_group_name, service_name, api_id, format:format, custom_headers:custom_headers).value!
    end

    #
    # Get the policy configuration at the API level.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API revision identifier. Must be unique in the current
    # API Management service instance. Non-current revision has ;rev=n as a suffix
    # where n is the revision number.
    # @param format [PolicyExportFormat] Policy Export Format. Possible values
    # include: 'xml', 'rawxml'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, service_name, api_id, format:nil, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'api_id is nil' if api_id.nil?
      fail ArgumentError, "'api_id' should satisfy the constraint - 'MaxLength': '256'" if !api_id.nil? && api_id.length > 256
      fail ArgumentError, "'api_id' should satisfy the constraint - 'MinLength': '1'" if !api_id.nil? && api_id.length < 1
      fail ArgumentError, "'api_id' should satisfy the constraint - 'Pattern': '^[^*#&+:<>?]+$'" if !api_id.nil? && api_id.match(Regexp.new('^^[^*#&+:<>?]+$$')).nil?
      policy_id = 'policy'
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/policies/{policyId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'apiId' => api_id,'policyId' => policy_id,'subscriptionId' => @client.subscription_id},
          query_params: {'format' => format,'api-version' => @client.api_version},
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
            result_mapper = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PolicyContract.mapper()
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
    # Creates or updates policy configuration for the API.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API revision identifier. Must be unique in the current
    # API Management service instance. Non-current revision has ;rev=n as a suffix
    # where n is the revision number.
    # @param parameters [PolicyContract] The policy contents to apply.
    # @param if_match [String] ETag of the Entity. Not required when creating an
    # entity, but required when updating an entity.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PolicyContract] operation results.
    #
    def create_or_update(resource_group_name, service_name, api_id, parameters, if_match:nil, custom_headers:nil)
      response = create_or_update_async(resource_group_name, service_name, api_id, parameters, if_match:if_match, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates policy configuration for the API.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API revision identifier. Must be unique in the current
    # API Management service instance. Non-current revision has ;rev=n as a suffix
    # where n is the revision number.
    # @param parameters [PolicyContract] The policy contents to apply.
    # @param if_match [String] ETag of the Entity. Not required when creating an
    # entity, but required when updating an entity.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, service_name, api_id, parameters, if_match:nil, custom_headers:nil)
      create_or_update_async(resource_group_name, service_name, api_id, parameters, if_match:if_match, custom_headers:custom_headers).value!
    end

    #
    # Creates or updates policy configuration for the API.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API revision identifier. Must be unique in the current
    # API Management service instance. Non-current revision has ;rev=n as a suffix
    # where n is the revision number.
    # @param parameters [PolicyContract] The policy contents to apply.
    # @param if_match [String] ETag of the Entity. Not required when creating an
    # entity, but required when updating an entity.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, service_name, api_id, parameters, if_match:nil, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'api_id is nil' if api_id.nil?
      fail ArgumentError, "'api_id' should satisfy the constraint - 'MaxLength': '256'" if !api_id.nil? && api_id.length > 256
      fail ArgumentError, "'api_id' should satisfy the constraint - 'MinLength': '1'" if !api_id.nil? && api_id.length < 1
      fail ArgumentError, "'api_id' should satisfy the constraint - 'Pattern': '^[^*#&+:<>?]+$'" if !api_id.nil? && api_id.match(Regexp.new('^^[^*#&+:<>?]+$$')).nil?
      policy_id = 'policy'
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['If-Match'] = if_match unless if_match.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PolicyContract.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/policies/{policyId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'apiId' => api_id,'policyId' => policy_id,'subscriptionId' => @client.subscription_id},
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
        unless status_code == 201 || status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PolicyContract.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest2::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PolicyContract.mapper()
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
    # Deletes the policy configuration at the Api.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API revision identifier. Must be unique in the current
    # API Management service instance. Non-current revision has ;rev=n as a suffix
    # where n is the revision number.
    # @param if_match [String] ETag of the Entity. ETag should match the current
    # entity state from the header response of the GET request or it should be *
    # for unconditional update.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, service_name, api_id, if_match, custom_headers:nil)
      response = delete_async(resource_group_name, service_name, api_id, if_match, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes the policy configuration at the Api.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API revision identifier. Must be unique in the current
    # API Management service instance. Non-current revision has ;rev=n as a suffix
    # where n is the revision number.
    # @param if_match [String] ETag of the Entity. ETag should match the current
    # entity state from the header response of the GET request or it should be *
    # for unconditional update.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, service_name, api_id, if_match, custom_headers:nil)
      delete_async(resource_group_name, service_name, api_id, if_match, custom_headers:custom_headers).value!
    end

    #
    # Deletes the policy configuration at the Api.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param api_id [String] API revision identifier. Must be unique in the current
    # API Management service instance. Non-current revision has ;rev=n as a suffix
    # where n is the revision number.
    # @param if_match [String] ETag of the Entity. ETag should match the current
    # entity state from the header response of the GET request or it should be *
    # for unconditional update.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, service_name, api_id, if_match, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'api_id is nil' if api_id.nil?
      fail ArgumentError, "'api_id' should satisfy the constraint - 'MaxLength': '256'" if !api_id.nil? && api_id.length > 256
      fail ArgumentError, "'api_id' should satisfy the constraint - 'MinLength': '1'" if !api_id.nil? && api_id.length < 1
      fail ArgumentError, "'api_id' should satisfy the constraint - 'Pattern': '^[^*#&+:<>?]+$'" if !api_id.nil? && api_id.match(Regexp.new('^^[^*#&+:<>?]+$$')).nil?
      policy_id = 'policy'
      fail ArgumentError, 'if_match is nil' if if_match.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['If-Match'] = if_match unless if_match.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/policies/{policyId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'apiId' => api_id,'policyId' => policy_id,'subscriptionId' => @client.subscription_id},
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
